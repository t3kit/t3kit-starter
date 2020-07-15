#!/usr/bin/env bash

set -eu pipefail

# ####################################
readonly BASEDIR=$(dirname "${BASH_SOURCE[0]}")
# Generate temporary DB configuration
# shellcheck disable=SC1090
source "$BASEDIR"/mysql_cnf.sh
# ####################################

echo "--------------------"
# SHOW DATABASES
mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -e "SHOW DATABASES;"
echo "--------------------"

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
