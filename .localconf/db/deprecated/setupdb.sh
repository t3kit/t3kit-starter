#!/usr/bin/env bash

set -eu
set -o pipefail

# ####################################
readonly BASEDIR=$(dirname "${BASH_SOURCE[0]}")
# Generate temporary DB configuration
# shellcheck disable=SC1090
source "$BASEDIR"/mysql_cnf.sh
# ####################################


echo "IMPORT T3KIT DATABASE INTO $DB_NAME"

CHANGE_DB="Y"
# NUMBER_OF_ROWS=0

# # Check if the database exists
# if [[ -n $(mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -s -e "SHOW DATABASES LIKE '$DB_NAME';") ]]; then
#     NUMBER_OF_ROWS=$(mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -s --skip-column-names -e "SELECT COUNT(DISTINCT table_name) FROM information_schema.columns WHERE table_schema = '$DB_NAME'");
# fi

# # Ask the user if it is OK to continue if there database is not empty
# if [[ "$NUMBER_OF_ROWS" -gt 0 ]]; then
#     read -rp "The database $DB_NAME is not empty. Would you like to continue? [Y/n]: " CHANGE_DB
# fi

if [[ "$CHANGE_DB" = "Y" ]]; then
    mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -e "CREATE DATABASE IF NOT EXISTS $DB_NAME"
    # mysql --defaults-extra-file="$BASEDIR"/mysql.cnf "$DB_NAME" < "$BASEDIR/t3kit10.sql"
    mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -e "SHOW DATABASES"
    echo "Done"
fi

# Remove temporary DB configuration
rm "$MYSQL_CONFIG"
