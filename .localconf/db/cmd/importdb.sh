#!/usr/bin/env bash

set -e
set -o pipefail

# ####################################
BASEDIR=$(dirname "${BASH_SOURCE[0]}")
# Generate temporary DB configuration
# shellcheck source=mysql_cnf.sh
source "$BASEDIR"/mysql_cnf.sh
# shellcheck source=var.sh
source "$BASEDIR"/var.sh
# ####################################

echo -e "\nImport $DBDUMP_NAME dump into $DB_NAME database"
mysql --defaults-extra-file="$BASEDIR"/mysql.cnf "$DB_NAME" < "$BASEDIR"/../"$DBDUMP_NAME"

# Remove temporary DB configuration
rm "$MYSQL_CONFIG"
