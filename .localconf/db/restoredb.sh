#!/usr/bin/env bash

set -e
set -o pipefail

# ####################################
BASEDIR=$(dirname "${BASH_SOURCE[0]}")
# ####################################

# Drop -> Create -> Import DB
# ####################################
docker-compose exec -T web /var/www/html/"$BASEDIR"/cmd/dropdb.sh
docker-compose exec -T web /var/www/html/"$BASEDIR"/cmd/createdb.sh
docker-compose exec -T web /var/www/html/"$BASEDIR"/cmd/importdb.sh
# ####################################

echo -e "\nDone\n"
