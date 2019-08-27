#!/usr/bin/env bash

# ####################################
BASEDIR=$(dirname "$0")
# Generate temporary DB configuration
# shellcheck disable=SC1090
source "$BASEDIR"/mysql_cnf.sh
# ####################################


echo "CREATE NEW DATABASE $DB_NAME"

# Create new database
mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -e "CREATE DATABASE $DB_NAME"
mysql --defaults-extra-file="$BASEDIR"/mysql.cnf "$DB_NAME" < "$BASEDIR"/t3kit9.sql

# Remove temporary DB configuration
rm "$MYSQL_CONFIG"

echo "Done"
