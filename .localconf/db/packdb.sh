#!/usr/bin/env bash

set -eu pipefail

# ####################################
readonly BASEDIR=$(dirname "${BASH_SOURCE[0]}")
# Generate temporary DB configuration
# shellcheck disable=SC1090
source "$BASEDIR"/mysql_cnf.sh
# ####################################

OUT_FILE="t3kit10.sql"
CLEAR_TABLES=(
    "be_sessions"
    "be_users"
    "cache_treelist"
    "cache_adminpanel_requestcache"
    "cache_adminpanel_requestcache_tags"
    "cache_hash"
    "cache_hash_tags"
    "cache_imagesizes"
    "cache_imagesizes_tags"
    "cache_pages"
    "cache_pagesection"
    "cache_pagesection_tags"
    "cache_pages_tags"
    "cache_rootline"
    "cache_rootline_tags"
    "cache_treelist"
    "fe_sessions"
    "sys_file_processedfile"
    "sys_history"
    "sys_log"
    "tx_extensionmanager_domain_model_extension"

    # extensions

)

echo "Cleanup $DB_NAME tables";
for TABLE in "${CLEAR_TABLES[@]}"
do
    mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -e "TRUNCATE TABLE ${TABLE}" "$DB_NAME"
done

# Empty constants and setup for sys_template 1
mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -e "UPDATE sys_template SET constants = '', config = '' WHERE uid = 1;" "$DB_NAME"

echo "DB dump -> ${OUT_FILE}"
mysqldump --defaults-extra-file="$BASEDIR"/mysql.cnf "$DB_NAME" > "$BASEDIR"/"$OUT_FILE"

echo "Merge be_users.sql table, must include 'admin' user with password 'admin1234'"
cat "$BASEDIR"/be_users.sql >> "$BASEDIR/${OUT_FILE}"


# drop and restore DB
if [ "$(mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -e 'show databases;' | grep "${DB_NAME}")" == "${DB_NAME}" ]; then

    # Drop database
    echo "DROP $DB_NAME DB"
    mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -e "DROP DATABASE $DB_NAME;"

    # Create new database
    echo "CREATE NEW DATABASE $DB_NAME"
    mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -e "CREATE DATABASE $DB_NAME"
    mysql --defaults-extra-file="$BASEDIR"/mysql.cnf "$DB_NAME" < "$BASEDIR"/t3kit10.sql
fi

# Remove temporary DB configuration
rm "$MYSQL_CONFIG"

echo "Done"
