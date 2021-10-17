#!/bin/bash

# Check if DDEV is installed and asks user to configure for ddev
if [ -n "$(command -v ddev)" ]; then
    BASEDIR=$(dirname "$0")

    cp -r "$BASEDIR"/dot-ddev-directory .ddev

    echo "The .ddev directory has been created."

    cd "$BASEDIR"/../../.. && ddev config --docroot=public --project-type=typo3 --php-version=8.0
else
    echo "DDEV is not installed."
fi
