#!/usr/bin/env bash

set -e

# ####################################
BASEDIR=$(dirname "${BASH_SOURCE[0]}")
SSH_AUTH_SOCK_MAC="/run/host-services/ssh-auth.sock"
# ####################################

# ####################################
if [[ -f "$BASEDIR/../../.env" ]];
then
    IF_USER_ID=$(grep -v '^#' .env | grep ^USER_ID | cut -d '=' -f2 | tail -1)

    if [ -z "$IF_USER_ID" ]
    then
        # enable ssh-agent forwarding on macOS if no USER_ID defined
        docker-compose run -e COMPOSER_MODE=true -e SSH_AUTH_SOCK=$SSH_AUTH_SOCK_MAC -v $SSH_AUTH_SOCK_MAC:$SSH_AUTH_SOCK_MAC --rm web "$@"
    else
        # enable ssh-agent forwarding
        docker-compose run -e COMPOSER_MODE=true -e SSH_AUTH_SOCK="$SSH_AUTH_SOCK" -v "$SSH_AUTH_SOCK":"$SSH_AUTH_SOCK" --rm web "$@"
    fi
fi
# ####################################
