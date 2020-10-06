#!/usr/bin/env bash

set -e
set -o pipefail

# Platform SH dump db
# ####################################
BASEDIR=$(dirname "${BASH_SOURCE[0]}")
# shellcheck source=cmd/platformdbdump.sh
source "$BASEDIR"/cmd/platformdbdump.sh
# ####################################

# Drop -> Create -> Import DB
# ####################################
BASEDIR=$(dirname "${BASH_SOURCE[0]}")
docker-compose exec -T web /var/www/html/"$BASEDIR"/cmd/dropdb.sh
docker-compose exec -T web /var/www/html/"$BASEDIR"/cmd/createdb.sh
docker-compose exec -T web /var/www/html/"$BASEDIR"/cmd/importdb.sh
docker-compose exec -T -u www-data web /var/www/html/vendor/bin/typo3cms install:fixfolderstructure
docker-compose exec -T -u www-data web /var/www/html/vendor/bin/typo3cms database:updateschema
docker-compose exec -T -u www-data web /var/www/html/vendor/bin/typo3cms cache:flush
# ####################################

echo -e "\nDone\n"
