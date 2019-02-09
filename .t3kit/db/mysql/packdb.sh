#!/bin/bash
OUT_FILE=${1:-"t3kit9.sql"}

CLEAR_TABLES=(
    "be_sessions"
    "be_users"
    "cache_md5params"
    "cache_treelist"
    "cf_adminpanel_requestcache"
    "cf_adminpanel_requestcache_tags"
    "cf_cache_hash"
    "cf_cache_hash_tags"
    "cf_cache_imagesizes"
    "cf_cache_imagesizes_tags"
    "cf_cache_pages"
    "cf_cache_pagesection"
    "cf_cache_pagesection_tags"
    "cf_cache_pages_tags"
    "cf_cache_rootline"
    "cf_cache_rootline_tags"
    "cf_extbase_datamapfactory_datamap"
    "cf_extbase_datamapfactory_datamap_tags"
    "fe_sessions"
    "sys_file_processedfile"
    "sys_history"
    "sys_log"
    "tx_extensionmanager_domain_model_extension"
    "tx_extensionmanager_domain_model_repository"

    # extensions

)

echo "Clearing tables...";
for TABLE in "${CLEAR_TABLES[@]}"
do
mysql -uroot -p$DB_ROOT_PASSWORD -h$DB_CONTAINER_NAME -e "TRUNCATE TABLE ${TABLE}" "$DB_NAME"
done

echo "Updating data..."
# Empty constants and setup for sys_template 1
mysql -uroot -p$DB_ROOT_PASSWORD -h$DB_CONTAINER_NAME -e "UPDATE sys_template SET constants = '', config = '' WHERE uid = 1;" "$DB_NAME"

echo "Dumping db..."
mysqldump -uroot -p$DB_ROOT_PASSWORD -h$DB_CONTAINER_NAME "$DB_NAME" > /var/www/html/db/mysql/"$OUT_FILE"

echo "Output in ${OUT_FILE}"

echo "Merge be_users.sql dump, must include admin user with password admin1234"
cat /var/www/html/db/mysql/be_users.sql >> "/var/www/html/db/mysql/${OUT_FILE}"
echo "Done"
