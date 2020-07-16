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

echo -e "\nCleanup $DB_NAME database tables"

for TABLE in "${CLEAR_TABLES[@]}"
do
    mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -e "TRUNCATE TABLE ${TABLE}" "$DB_NAME"
done

# Empty constants and setup for sys_template uid 1
mysql --defaults-extra-file="$BASEDIR"/mysql.cnf -e "UPDATE sys_template SET constants = '', config = '' WHERE uid = 1;" "$DB_NAME"

# Remove temporary DB configuration
rm "$MYSQL_CONFIG"
