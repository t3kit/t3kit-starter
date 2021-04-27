# Docker-compose config for Composer

Docker-compose config to install composer dependencies and run tests under the correct PHP environment

_*Note: To continue with this process you need to create an environment `.localconf/composer/.env` file for your project based on an example `.localconf/composer/composer.env`. You can create this file by running: `composer env` or `cp .localconf/composer/composer.env .localconf/composer/.env`_

- OS-specific settings in `.localconf/composer/.env` file
    - **Linux**
        - Uncomment `USER_ID` var and set up your host user id to make the shared folder writable.
        - Uncomment `SSH_AUTH_SOCK_VOL=${SSH_AUTH_SOCK}` to enable ssh-agent forwarding on Linux if you are using private packages as composer dependencies
    - **Mac**
        - Uncomment `SSH_AUTH_SOCK_VOL=/run/host-services/ssh-auth.sock` to enable ssh-agent forwarding on Mac if you are using private packages as composer dependencies

## Commands

- `composer ci` composer install inside docker container
- `composer cup` composer update inside docker container
- `composer cre` composer require inside docker container
- `composer ctest` composer test inside docker container
