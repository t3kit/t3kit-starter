#!/usr/bin/env bash

MYSQL_CONFIG="$BASEDIR/mysql.cnf"

# Generate temporary DB configuration
{
    echo "[client]";
    echo "password = $MYSQL_ROOT_PASSWORD";
    echo "host = $DB_HOST";
} > "$MYSQL_CONFIG"
