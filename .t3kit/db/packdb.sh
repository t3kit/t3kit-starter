#!/bin/bash

# ####################################
BASEDIR=$(dirname "$0")
# Generate temporary DB configuration
source $BASEDIR/mysql_cnf.sh
# ####################################

OUT_FILE=${1:-"t3kit9.sql"}
CLEAR_TABLES=(
    "be_sessions"
    "be_users"
    "cache_treelist"
    "cf_adminpanel_requestcache"
    "cf_adminpanel_requestcache_tags"
    "cf_cache_hash"
    "cf_cache_hash_tags"
    "cf_cache_imagesizes"
    "cf_cache_imagesizes_tags"
    "cf_cache_pages"
    "cf_cache_pagesection"
    "cf_cache_pagesection_tags"
    "cf_cache_pages_tags"
    "cf_cache_rootline"
    "cf_cache_rootline_tags"
    "cf_extbase_datamapfactory_datamap"
    "cf_extbase_datamapfactory_datamap_tags"
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
    mysql --defaults-extra-file=$BASEDIR/mysql.cnf -e "TRUNCATE TABLE ${TABLE}" "$DB_NAME"
done

# Empty constants and setup for sys_template 1
mysql --defaults-extra-file=$BASEDIR/mysql.cnf -e "UPDATE sys_template SET constants = '', config = '' WHERE uid = 1;" "$DB_NAME"

echo "DB dump -> ${OUT_FILE}"
mysqldump --defaults-extra-file=$BASEDIR/mysql.cnf "$DB_NAME" > $BASEDIR/"$OUT_FILE"

echo "Merge be_users.sql table, must include 'admin' user with password 'admin1234'"
cat $BASEDIR/be_users.sql >> "$BASEDIR/${OUT_FILE}"

# Remove temporary DB configuration
rm $MYSQL_CONFIG

echo "Done"
