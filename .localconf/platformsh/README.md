# %$_project-name_$%

## General info

- [Contributing](https://github.com/t3kit/.github/blob/master/CONTRIBUTING.md)
- [Code of Conduct](https://github.com/t3kit/.github/blob/master/CODE_OF_CONDUCT.md)
- [Support](https://github.com/t3kit/.github/blob/master/SUPPORT.md)
- [Security Policy](https://github.com/t3kit/.github/blob/master/SECURITY.md)

***

## Required dependencies

- [Git](https://git-scm.com/)
- [Composer](https://getcomposer.org/) >= v1.9.1
- [Docker](https://docs.docker.com/install/) >= v19.03.13
- [Docker Compose](https://docs.docker.com/compose/install/) >= v1.27.4

## Quick start

1. Check that [nginx-proxy](#nginx-proxy) started
2. Clone the repository
3. `composer env` - Configure local development environment variables

    _*Note: To continue with Docker you need to create an environment `.env` file for your project based on an example `local.env`. You need to create `.env` file manually by running: `composer env` or `cp .localconf/local.env .env`._

    - Check environment variables and change them if it needed. By default no changes required.
    - OS-specific settings in `.env` file
        - **Linux**
            - Uncomment and set your host user id `USER_ID` in `.env` file to make shared folder writable. If your host `UID = 1000`, then you can skip this step. We are using UID 1000 by default.
        - **macOS**
            - Uncomment `USER_ID-mac` variabl. This will improve Docker performance by skipping usermod script on container.

4. `composer install` - Install dependencies
5. `docker-compose up -d` - Start all Docker services for a local development environment
6. `composer syncdb` - Sync database with PlatformSH DB

    _*Note: You can run `composer syncdb` many times. Every time when you want to update your local db from PlatformSH, run `composer syncdb`._

7. `composer syncfiles` - Sync files with PlatformSH
8. Open `%$_project-name_$%.t3.localhost` in browser *_Google Chrome_

## nginx-proxy

### [nginx-proxy for t3kit10 project](https://github.com/t3kit/t3kit-dockerhub#nproxy)

For all t3kit projects, we need just a one `nginx-proxy` started as a separate Docker container. [Based on Automated Nginx Reverse Proxy for Docker](https://github.com/jwilder/nginx-proxy)

#### Run nproxy with docker-compose

```shell
git clone git@github.com:t3kit/nproxy.git
cd nproxy
docker-compose up -d
```

## [README t3kit](./t3kit.md)
