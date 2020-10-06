#!/usr/bin/env bash

set -e
set -o pipefail

# ####################################
BASEDIR=$(dirname "${BASH_SOURCE[0]}")
# shellcheck source=var.sh
source "$BASEDIR"/var.sh
# shellcheck source=../../../../.env
source .env
# ####################################

# check if platform ID exists
if [[ -z $PLATFORM_ID ]]
then
    echo -e "\nPLATFORM_ID is not set. Please set it in the .env file in the root directory of the site."
    exit 0
fi
echo -e "\nPLATFORM_ID [$PLATFORM_ID]"

# remove PlatformSH DB dump if it exists
if [[ -f "$BASEDIR"/../"$DBDUMP_NAME" ]]; then
    rm "$BASEDIR"/../"$DBDUMP_NAME"
fi

EXCLUDE_TABLES=$(printf -- "--exclude-table %s " "${CLEAR_TABLES[@]}")

# Platform SH DB dump
echo -e "\nImporting DB dump from platform.sh"
# shellcheck disable=SC2086
platform db:dump --project "$PLATFORM_ID" $EXCLUDE_TABLES --environment master -f "$BASEDIR"/../"$DBDUMP_NAME"
