#!/bin/bash

MYSQL_CONFIG="$BASEDIR/mysql.cnf"

# Generate temporary DB configuration
echo "[client]" > $MYSQL_CONFIG
echo "user = $DB_USER" >> $MYSQL_CONFIG
echo "password = $DB_ROOT_PASSWORD" >> $MYSQL_CONFIG
echo "host = $DB_HOST" >> $MYSQL_CONFIG
