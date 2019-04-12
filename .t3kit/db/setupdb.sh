#!/bin/bash

BASEDIR=$(dirname "$0")

# Create new database
echo "Creating DB $DB_NAME ..."
mysql -u$DB_USER -p$DB_ROOT_PASSWORD -h$DB_CONTAINER_NAME -e "CREATE DATABASE $DB_NAME"
mysql -u$DB_USER -p$DB_ROOT_PASSWORD -h$DB_CONTAINER_NAME $DB_NAME < $BASEDIR/t3kit9.sql
echo "Done"
