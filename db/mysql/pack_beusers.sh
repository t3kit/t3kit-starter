#!/bin/bash

mysqldump -uroot -p$DB_ROOT_PASSWORD -h$DB_CONTAINER_NAME "$DB_NAME" be_users > /var/www/html/db/mysql/be_users.sql
echo "Done"
cd
