#!/bin/bash

BASEDIR=$(dirname "$0")

mysqldump -uroot -p$DB_ROOT_PASSWORD -h$DB_CONTAINER_NAME "$DB_NAME" be_users > $BASEDIR/be_users.sql
echo "Done"
cd
