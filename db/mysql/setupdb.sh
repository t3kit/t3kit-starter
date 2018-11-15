#!/bin/bash

# Create new database
echo "Creating DB $DB_NAME ..."
mysql -uroot -p$DB_ROOT_PASSWORD -h$DB_CONTAINER_NAME -e "ALTER DATABASE $DB_NAME CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
mysql -uroot -p$DB_ROOT_PASSWORD -h$DB_CONTAINER_NAME $DB_NAME < /var/www/html/db/mysql/t3kit9.sql
echo "Done"
