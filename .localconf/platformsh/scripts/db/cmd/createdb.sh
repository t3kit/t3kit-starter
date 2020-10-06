#!/usr/bin/env bash

set -e
set -o pipefail

# ####################################
BASEDIR=$(dirname "${BASH_SOURCE[0]}")
# Generate temporary DB configuration
# shellcheck source=mysql_cnf.sh
source "$BASEDIR"/mysql_cnf.sh
# ####################################

# Check if the database exists
if [[ -n $(mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -s --skip-column-names -e "SHOW DATABASES LIKE '$DB_NAME';") ]]; then
    echo -e "\n$DB_NAME db already exists"
    mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -e "SHOW DATABASES"
else
    echo -e "\nCREATE $DB_NAME DATABASE"
    echo "------------------------------"
    mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -e "CREATE DATABASE IF NOT EXISTS $DB_NAME"
    mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -e "SHOW DATABASES"
fi

# Remove temporary DB configuration
rm "$MYSQL_CONFIG"
