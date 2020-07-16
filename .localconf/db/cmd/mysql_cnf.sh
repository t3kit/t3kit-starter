#!/usr/bin/env bash

set -e
set -o pipefail

MYSQL_CONFIG="$BASEDIR/mysql.cnf"

# Generate temporary DB configuration
if ! [[ -f $MYSQL_CONFIG ]]; then
    {
        echo "[client]";
        echo "password = $MYSQL_ROOT_PASSWORD";
        echo "host = $DB_HOST";
    } > "$MYSQL_CONFIG"
fi
