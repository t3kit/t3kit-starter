#!/bin/bash

# Make www-data user use id from hosts user to make shared folder writable.
if [ -z "$USERID" ]
then
      echo "USERID variable is not set."
      echo "$(id www-data)"
else
    # fetch current userid and groupid for user www-data
    WWW_DATA_USERID=$(id -u www-data)
    # if current userid doesn't equal the one from .env, force id of user to the one from .env
    if [ "$WWW_DATA_USERID" -ne "${USERID}" ];then
        echo "usermod -u ${USERID} www-data"
        usermod -u ${USERID} www-data
    fi
    echo "$(id www-data)"
fi

# start apache
exec apachectl -D FOREGROUND
