#!/usr/bin/env bash

set -e
set -o pipefail

# Variables
# shellcheck disable=SC2034
DBDUMP_NAME="dbdump.sql"

# shellcheck disable=SC2034
CLEAR_TABLES=(
    "cache_treelist"
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
    "cf_extbase_object"
    "cf_extbase_object_tags"
    "cf_workspaces_cache"
    "cf_workspaces_cache_tags"
    "cf_adminpanel_requestcache"
    "cf_adminpanel_requestcache_tags"
    "fe_sessions"
    "sys_file_processedfile"
    "sys_history"
    "sys_log"
    "tx_extensionmanager_domain_model_extension"

    # extensions
    "cf_cache_news_category_tags"
    "cf_cache_news_category"
    "cf_tx_solr"
    "cf_tx_solr_tags"
    "tx_solr_statistics"
    "tx_solr_cache"
    "tx_solr_cache_tags"
    "tx_solr_indexqueue_item"
    "tx_solr_last_searches"
)
