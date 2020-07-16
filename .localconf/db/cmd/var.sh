#!/usr/bin/env bash

set -e
set -o pipefail

# Variables
# shellcheck disable=SC2034
DBDUMP_NAME="t3kit10.sql"

# shellcheck disable=SC2034
CLEAR_TABLES=(
    "be_sessions"
    "cache_treelist"
    "cache_adminpanel_requestcache"
    "cache_adminpanel_requestcache_tags"
    "cache_hash"
    "cache_hash_tags"
    "cache_imagesizes"
    "cache_imagesizes_tags"
    "cache_pages"
    "cache_pagesection"
    "cache_pagesection_tags"
    "cache_pages_tags"
    "cache_rootline"
    "cache_rootline_tags"
    "cache_treelist"
    "fe_sessions"
    "sys_file_processedfile"
    "sys_history"
    "sys_log"
    "tx_extensionmanager_domain_model_extension"
    # extensions
    # ...
)
