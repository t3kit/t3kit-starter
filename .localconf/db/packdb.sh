#!/usr/bin/env bash

set -e
set -o pipefail

# ####################################
BASEDIR=$(dirname "${BASH_SOURCE[0]}")
# ####################################

# Cleanup -> Dump DB
# ####################################
docker compose exec -T web /var/www/html/"$BASEDIR"/cmd/dbcleanup.sh
docker compose exec -T web /var/www/html/"$BASEDIR"/cmd/dbdamp.sh
docker compose exec -T -u www-data web /var/www/html/vendor/bin/typo3 cache:flush
# ####################################

echo -e "\nDone\n"
