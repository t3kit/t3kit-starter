<p align="center">
    <a href="http://t3kit.com/">
        <img src="http://t3kit.com/fileadmin/example_content/images/logo.png" alt="t3kit logo" width="120" height="56">
    </a>
</p>

<h2 align="center">t3kit-starter</h2>
<h3 align="center">Starter point for a new project based on t3kit</h3>
<p align="center"><a href="https://t3kit.gitbook.io/doc/"><strong>t3kit documentation</strong></a></p>

![](https://github.com/t3kit/t3kit-starter/workflows/Code%20Guidelines/badge.svg)
![](https://github.com/t3kit/t3kit-starter/workflows/Local%20development%20environment/badge.svg)

## Table of contents

### t3kit-starter

- [About](#about)
- [What's included](#whats-included)
- [Required dependencies](#required-dependencies)
- [Quick start](#quick-start)
- [Local development environment based on Docker](#local-development-environment-based-on-docker)
- [Local development tools](#local-development-tools)
- [Changelog](CHANGELOG.md)

### General info about t3kit project

- [Documentation](https://t3kit.gitbook.io/doc)
- [t3kit Roadmap](https://t3kit.gitbook.io/doc/t3kit-roadmap)
- [Versioning](https://t3kit.gitbook.io/doc/t3kit-versioning)
- [t3kit project structure](https://t3kit.gitbook.io/doc/t3kit-project-structure)
- [Contributing to t3kit](https://github.com/t3kit/.github/blob/master/CONTRIBUTING.md)
- [Code of Conduct](https://github.com/t3kit/.github/blob/master/CODE_OF_CONDUCT.md)
- [Support](https://github.com/t3kit/.github/blob/master/SUPPORT.md)
- [Security Policy](https://github.com/t3kit/.github/blob/master/SECURITY.md)

***

## About

**t3kit-starter** is a bunch of tools, configs, and best practices which should help you to kickstart new projects on a t3kit basis

## What's included

It includes:

- Project folder structure
- Composer configuration
- t3kit and TYPO3 project dependencies
- TYPO3 global configurations
- TYPO3 context configurations
- Custom site configurations
- Local development environment based on Docker
- Starter database
- Tests
- Code guidelines

## Required dependencies

- [Git](https://git-scm.com/)
- [Composer](https://getcomposer.org/) >= v1.8.6
- [Docker](https://docs.docker.com/install/) >= v19.03.1
- [Docker Compose](https://docs.docker.com/compose/install/) >= v1.24.1

## Quick start

```shell
composer create-project -s dev --keep-vcs t3kit/t3kit-starter [<directory>] [<version>]

```

## Local development environment based on Docker

1. Check that [nginx-proxy](#nginx-proxy) started

2. Add new virtual host on your local machine

    _*Note: use this pattern `PROJECT_NAME.local` to add new virtual host. For example `t3kit9.local`_

    - `nano /etc/hosts`
    - add a new line at the end `127.0.0.1 PROJECT_NAME.local`

3. Configure local development environment variables

    _*Note: To continue with Docker you need to create an environment `.env` file for your project based on an example `local.env`. It will be created automatically with `composer create-project` command, but if you are starting a project using another method (e.g., `git clone & composer install`) then you need to created `.env` file manually: `composer env` or `cp .t3kit/docker/local.env .env`._

    - Change `COMPOSE_PROJECT_NAME` variable in `.env` file. It should be the same as a virtual host name. By default, it is `t3kit9.local`

    - OS-specific settings in `.env` file
        - **Ubuntu**
            - Disable CACHED volumes because it's redundant in Ubuntu. Comment `CACHED=:delegated` variable in `.env` file.
            - Uncomment and set your host user id `USER_ID=` in `.env` file to make shared folder writable.

4. Start all Docker services for a local development environment `docker-compose up -d`

5. Setup t3kit starter database `composer dbup` or `docker-compose exec web /var/www/html/.t3kit/db/setupdb.sh`

6. Open `t3kit.local` in browser

## Local development tools

### t3kit database manipulation - Setup/Restore/Pack

- Setup t3kit db: `composer dbup` or `docker-compose exec web /var/www/html/.t3kit/db/setupdb.sh`
- Restore t3kit db: `composer dbre` or `docker-compose exec web /var/www/html/.t3kit/db/restoredb.sh`
- Pack (save) t3kit db: `composer dbp` or `docker-compose exec web /var/www/html/.t3kit/db/packdb.sh`

### phpMyAdmin

#### Run phpMyAdmin docker container and connect it to needed DB host

```shell
docker run --name pma -d -e PMA_ARBITRARY=1 --restart=unless-stopped --network nproxy -p 8083:80 phpmyadmin/phpmyadmin
```

### nginx-proxy

#### [nginx-proxy for t3kit9 projects](https://github.com/t3kit/t3kit-dockerhub/tree/master/nproxy)

For all t3kit projects, we need just a one `nginx-proxy` started as a separate Docker container. [Based on Automated Nginx Reverse Proxy for Docker](https://github.com/jwilder/nginx-proxy)

##### Run nproxy with docker

```shell
docker network create nproxy
docker docker run -d -p=80:80 --name=nproxy --restart=unless-stopped --network=nproxy -v=/var/run/docker.sock:/tmp/docker.sock:ro t3kit/nproxy:1.0.0
```

### Clean up the project

If there no needs to use **t3kit** starter database or **Docker configuration** for local development, then just delete folder `.t3kit` from the root of your project - `rm -r .t3kit`
