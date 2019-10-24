#!/usr/bin/env bash

set -eu pipefail

# ####################################
readonly BASEDIR=$(dirname "${BASH_SOURCE[0]}")
# Generate temporary DB configuration
# shellcheck disable=SC1090
source "$BASEDIR"/mysql_cnf.sh
# ####################################

mysqldump --defaults-extra-file="$BASEDIR"/mysql.cnf "$DB_NAME" be_users > "$BASEDIR"/be_users.sql

# Remove temporary DB configuration
rm "$MYSQL_CONFIG"

echo "Done"
