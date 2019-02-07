#!/bin/bash

# Create new database
echo "Creating DB $DB_NAME ..."
mysql -u$DB_USER -p$DB_ROOT_PASSWORD -h$DB_CONTAINER_NAME -e "CREATE DATABASE $DB_NAME"
mysql -u$DB_USER -p$DB_ROOT_PASSWORD -h$DB_CONTAINER_NAME $DB_NAME < /var/www/html/db/mysql/t3kit9.sql
echo "Done"
