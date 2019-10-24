#!/bin/bash

BASEDIR=$(dirname "$0")

BASE_VARIANT=$1

if [ -z "$BASE_VARIANT" ]; then
    echo "No base variant supplied. Try again with"
    echo "    addbasevariant.sh 'http://example.com' [site name=t3kit]"
    exit 1
fi

# Takes an optional second argument, the site name in the config/sites/ direcotry
SITE_NAME=$2

if [ -z "$SITE_NAME" ]; then
    SITE_NAME="t3kit"
fi

CONFIG_FILE=$BASEDIR/../../config/sites/$SITE_NAME/config.yaml

if [ ! -f "$CONFIG_FILE" ]; then
    echo "No site with name '$SITE_NAME' exists."
    exit 1
fi

if grep -q "$BASE_VARIANT" "$CONFIG_FILE"; then
    echo "Base variant '$BASE_VARIANT' already exists."
    exit 1
fi

awk "/baseVariants:/ { print; print \"  -\n    base: '$BASE_VARIANT'\n    condition: 'applicationContext == \\\"Development/local\\\"'\"; next}1" "$CONFIG_FILE" | tee "$CONFIG_FILE" 1>/dev/null
