#!/usr/bin/env bash

set -e
set -o pipefail

# ####################################
BASEDIR=$(dirname "${BASH_SOURCE[0]}")
# Generate temporary DB configuration
# shellcheck source=mysql_cnf.sh
source "$BASEDIR"/mysql_cnf.sh
# ####################################

if [ "$(mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -e 'show databases;' | grep "${DB_NAME}")" == "${DB_NAME}" ]; then
    # Drop database
    echo -e "\nDROP $DB_NAME DB"
    echo "------------------------------"
    mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -e "DROP DATABASE $DB_NAME;"
    mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -e "SHOW DATABASES;"
fi

# Remove temporary DB configuration
rm "$MYSQL_CONFIG"
