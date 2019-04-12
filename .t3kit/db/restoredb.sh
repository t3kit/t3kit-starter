#!/bin/bash

DBHOST="localhost"
BASEDIR=$(dirname "$0")

# SHOW DATABASES
mysql -uroot -p$DB_ROOT_PASSWORD -h$DB_CONTAINER_NAME -e "SHOW DATABASES;"

if [ "`mysql -uroot -p$DB_ROOT_PASSWORD -h$DB_CONTAINER_NAME -e 'show databases;' | grep ${DB_NAME}`" == "${DB_NAME}" ]; then

    # Drop database
    echo "Dropping DB $DB_NAME ..."
    mysql -uroot -p$DB_ROOT_PASSWORD -h$DB_CONTAINER_NAME -e "DROP DATABASE $DB_NAME;"

    # Create new database
    echo "Creating DB $DB_NAME ..."
    mysql -u$DB_USER -p$DB_ROOT_PASSWORD -h$DB_CONTAINER_NAME -e "CREATE DATABASE $DB_NAME"
    mysql -u$DB_USER -p$DB_ROOT_PASSWORD -h$DB_CONTAINER_NAME $DB_NAME < $BASEDIR/t3kit9.sql
fi
echo "Done"
