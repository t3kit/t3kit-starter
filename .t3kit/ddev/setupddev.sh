#!/bin/bash

# Check if DDEV is installed and asks user to configure for ddev
if [ -n "$(which ddev)" ]; then
  read -p "Would you like to set up and configure DDEV? [Y/n]: " SETUP_DDEV

  if [ "$CHANGE_DB" = "Y" ]; then
    echo "OK. Won't install DDEV. You can do this later by running"
    echo "    .t3kit/ddev/setupddev.sh"
    exit 0
  fi

  BASEDIR=$(dirname "$0")

  cp -r $BASEDIR/dot-ddev-directory ../../.ddev

  echo "The .ddev directory has been created."

  cd $BASEDIR/../.. && ddev config --docroot=public --project-type=typo3 --php-version=7.2
fi


