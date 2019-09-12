<p align="center">
    <a href="http://t3kit.com/">
        <img src="http://t3kit.com/fileadmin/example_content/images/logo.png" alt="t3kit logo" width="120" height="56">
    </a>
</p>

<h2 align="center">t3kit-starter</h2>
<h3 align="center">Starter point for a new project based on t3kit</h3>
<p align="center"><a href="https://t3kit.gitbook.io/doc/"><strong>t3kit documentation</strong></a></p>

## Table of contents

### t3kit-starter

- [About](#about)
- [What's included](#what's-included)
- [Required dependencies](#required-dependencies)
- [Quick start](#quick-start)
- [Setup a local development environment based on Docker](#setup-a-local-development-environment-based-on-docker)
- [Local development tools](#local-development-tools)
- [Changelog](CHANGELOG.md)

### General info about t3kit project

- [t3kit Roadmap](#t3kit-roadmap)
- [Versioning](#versioning)
- [t3kit project structure](#t3kit-project-structure)
- [Documentation](https://t3kit.gitbook.io/doc)
- [Contributing to t3kit](https://github.com/t3kit/.github/blob/master/CONTRIBUTING.md)
- [Code of Conduct](https://github.com/t3kit/.github/blob/master/CODE_OF_CONDUCT.md)
- [Support](https://github.com/t3kit/.github/blob/master/SUPPORT.md)
- [Security Policy](https://github.com/t3kit/.github/blob/master/SECURITY.md)
- [t3kit 8.9](#t3kit8.9)
- [t3kit 8](#t3kit8)
- [t3kit 7](#t3kit7)

***

## About

### *t3kit-starter* is a bunch of tools, configs, and best practices which should help you to kickstart new projects on a t3kit basis

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

## Setup a local development environment based on Docker

1. Check that [nginx-proxy](#nginx-proxy) started

2. Add new virtual host on your local machine

    _*Note: use this pattern `PROJECT_NAME.local` to add new virtual host. For example `t3kit9.local`_

    - `nano /etc/hosts`
    - add a new line at the end `127.0.0.1 PROJECT_NAME.local`

3. Configure local development environment variables

    _*Note: To continue with Docker you need to create an environment `.env` file for your project based on an example `local.env`. It will be created automatically with `composer create-project` command, but if you are starting a project using another method (e.g., `git clone & composer install`) then you need to created `.env` file manually: `composer env` or `cp .t3kit/docker/local.env .env`._

    - Change `COMPOSE_PROJECT_NAME` variable in `.env` file. It should be the same as a virtual host name without suffix `.local`. By default, it is `t3kit9`

    - OS-specific settings in `.env` file
        - **Ubuntu**
            - Disable CACHED volumes because it's redundant in Ubuntu. Comment `CACHED=:cached` variable in `.env` file.
            - Uncomment and set your host user id `USER_ID=` in `.env` file to make shared folder writable.

4. Start all Docker services for a local development environment `docker-compose up -d`

5. Setup t3kit starter database `composer dbup` or `docker-compose exec web /var/www/html/.t3kit/db/setupdb.sh`

6. Open `t3kit.local` in browser

## Local development additional info

### t3kit database manipulation - Setup/Restore/Pack

- Setup t3kit db: `composer dbup` or `docker-compose exec web /var/www/html/.t3kit/db/setupdb.sh`
- Restore t3kit db: `composer dbre` or `docker-compose exec web /var/www/html/.t3kit/db/restoredb.sh`
- Pack (save) t3kit db: `composer dbp` or `docker-compose exec web /var/www/html/.t3kit/db/packdb.sh`

### Stop and remove Docker services for a local development environment

- `docker-compose down`

### Run a command in a running WEB container

- `docker-compose exec web bash`

### phpMyAdmin

#### Run phpMyAdmin docker container and connect it to needed DB host

```shell
docker run --name pma -d -e PMA_ARBITRARY=1 --restart=unless-stopped --network nproxy -p 8083:80 phpmyadmin/phpmyadmin
```

### nginx-proxy

#### [nginx-proxy for t3kit9 projects](https://github.com/t3kit/nproxy)

For all t3kit projects, we need just a one `nginx-proxy` started as a separate Docker container. [Based on Automated Nginx Reverse Proxy for Docker](https://github.com/jwilder/nginx-proxy)

##### Run nproxy with docker-compose

```shell
git clone git@github.com:t3kit/nproxy.git
cd nproxy
docker-compose up -d
```

##### Run nproxy with docker

```shell
docker network create nproxy
docker run -d -p=80:80 --name=nproxy --restart=unless-stopped --network=nproxy -v=/var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy
```

### Clean up the project

If there no needs to use **t3kit** starter database or **Docker configuration** for local development, then just delete folder `.t3kit` from the root of your project - `rm -r .t3kit`

***

## t3kit Roadmap

|t3kit |TYPO3|Development|Release|Support & Maintenance|End of support|
|------|-----|-----------|-------|---------------------|--------------|
|v7    |v7   |❌         |02.2017|❌                   |02.2017       |
|v8-8.8|v8   |❌         |02.2017|❌                   |02.2019       |
|8.9   |v9   |❌         |01.2019|✅                   |04.2020       |
|10    |v10  |✅         |❗**02.2020**|               |              |
|11    |v11  |:x:        |_~08.2021_|                  |              |

## Versioning

Every **t3kit** release tagged by git tag using Semantic Versioning approach, but with t3kit specific change to **Major version number** which should be synchronized with particular TYPO3 version.

- 1️⃣ first number - **Major version**: should be always the same as a last supported TYPO3 major version.
- 2️⃣ second number - **Minor version**: new features and breaking changes to t3kit.
- 3️⃣ third number - **Patch version**: pashes, bug fixes, documentation updates, code refactoring, tests and other small tasks.

## t3kit project structure

t3kit consist of **two** main parts plus additional extension which intended to help extend functionality for base t3kit components.

- **t3kit-starter** - Starter point for a new project based on t3kit. GitHub project template, tools, configs, and best practices which should help you to kickstart new projects on a t3kit basis.

- **t3kit** - main part of t3kit conception. It consists of new content elements, configurations, predefined BE layouts, menus, and scalable independent Front-End part.

***

## t3kit8.9

Every part/extension of t3kit **v8.9** has a git branch `t3kit8.9` where you can find all last updates/commits for this particular version of t3kit.

## t3kit8

Every part/extension of t3kit **v8** has a git branch `t3kit8` where you can find all last updates/commits for this particular version of t3kit.

## t3kit7

Every part/extension of t3kit **v7** has a git branch `t3kit7` where you can find all last updates/commits for this particular version of t3kit.
