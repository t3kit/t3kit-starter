#!/usr/bin/env bash

set -e
set -o pipefail

# ####################################
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

echo "Sync folder fileadmin"
rsync -azv --stats --progress --human-readable --exclude '_processed_' --exclude '_temp_' "$(platform ssh --project "$PLATFORM_ID" --environment master --pipe)":/app/public/fileadmin/ public/fileadmin
