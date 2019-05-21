<p align="center">
  <a href="http://t3kit.com/">
    <img src="http://t3kit.com/fileadmin/example_content/images/logo.png" alt="t3kit logo" width="120" height="56">
  </a>
</p>

<h2 align="center">t3kit-starter</h2>
<h3 align="center">Starter point for a new project based on t3kit</h3>
<p align="center"><a href="https://t3kit.gitbook.io/doc/"><strong>t3kit documentation</strong></a></p>

## Table of contents

- [About](#about)
- [Required dependencies](#required-dependencies)
- [Quick start a new project](#quick-start-a-new-project)
- [Setup a local development environment based on Docker](#setup-a-local-development-environment-based-on-docker)
- [Local development tools](#local-development-tools)
- [Documentation](#documentation)
- [Structure](#structure)
- [Report a bug or feature request](#report-a-bug-or-feature-request)
- [Contributing](#contributing)
- [Community](#community)
- [Versioning](#versioning)
- [Changelog](https://github.com/t3kit/t3kit-starter/blob/master/CHANGELOG.md)
- [t3kit8](#t3kit8)
- [t3kit7](#t3kit7)

***

## About

### *t3kit-starter* is a bunch of tools, configs, and best practices which should help you to kickstart new projects on a t3kit basis

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
- [Composer](https://getcomposer.org/) >= v1.8.0
- [Docker](https://docs.docker.com/install/) >= v18.09.1
- [Docker Compose](https://docs.docker.com/compose/install/) >= v1.23.2

## Quick start a new project

```shell
composer create-project -s dev --remove-vcs t3kit/t3kit-starter [<directory>] [<version>]

```

## Setup a local development environment based on Docker

1. Check that [nginx-proxy](#nginx-proxy) started

2. Add new virtual host on your local machine

    _*Note: use this pattern `PROJECT_NAME.local` to add new virtual host. For example `t3kit9.local`_

    1. `nano /etc/hosts`
    2. add a new line at the end `127.0.0.1 PROJECT_NAME.local`

3. Configure local development environment variables

   _*Note: To continue with Docker you need to create an environment `.env` file for your project based on an example `local.env`. It will be created automatically with `composer create-project` command, but if you are starting a project using another method (e.g., `git clone & composer install`) then you need to created `.env` file manually -> `composer env` or `cp .t3kit/docker/local.env .env`._

    1. Change `COMPOSE_PROJECT_NAME` variable in `.env` file. It should be the same as a virtual host name without suffix `.local`. By default, it is `t3kit9`

    2. **!!!OS-specific settings in `.env` file**
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

## Documentation

[t3kit doocumentation](https://t3kit.gitbook.io/doc/)

## Structure

## Report a bug or feature request

## Contributing

## Community

- News and Releases info at [t3kit.com](http://t3kit.com/)
- t3kit [Demo site](http://demo.t3kit.com/)
- Official [t3kit Slack channel](https://typo3.slack.com/messages/C1QSXGMSR)

## Versioning

## Changelog

## t3kit8

## t3kit7
