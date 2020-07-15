<p align="center">
    <a href="http://t3kit.com/">
        <img src="https://user-images.githubusercontent.com/5150636/82044420-ff053600-96b5-11ea-8313-4158d6c0be5d.png" alt="t3kit logo" width="150" height="76">
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
- [File structure](#file-structure)
- [Quick start a new project on t3kit base](#quick-start-a-new-project-on-t3kit-base)
- [Start with t3kit development](#start-with-t3kit-development)
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

## File structure

```text
t3kit-dockerhub/
├── .github/          # github actions
├── .localconf/
│   ├── community/   # community configuration for t3kit, not supported by t3kit team
│   ├── db/          # t3kit database manipulation - Setup/Restore/Pack
│   └── docker/      # t3kit local development config based on Docker
├── config/
└── public/
    ├── typo3conf/
    │   ├── AdditionalConfiguration.php
    │   ├── LocalConfiguration.php
    │   └── PackageStates.php
    └── fileadmin/
```

### Community configuration

We are open to any additional configuration on top of the t3kit. To add it just follow two rules below:

1. It always should be inside `.localconf/community/` folder
2. t3kit team will not support it

### Clean up the project

If there no needs to use **t3kit** starter database or **Docker configuration** for local development, then just delete folder `.localconf` from the root of your project - `rm -r .localconf`

***

## Quick start a new project on t3kit base (two options)

1. Start with `composer create-project`

    ```shell
    composer create-project -s dev --remove-vcs t3kit/t3kit-starter [<directory>] [<version>]
    ```

2. Use as a template in GitHub
    If you are using GitHub to store your future project, then you can just clone t3kit-starter as a template to your new project repository with `Use this template` green button.

## Start with t3kit development

1. Check that [nginx-proxy](#nginx-proxy) started
2. Clone the repository `git clone git@github.com:t3kit/t3kit-starter.git`
3. Configure local development environment variables

    _*Note: To continue with Docker you need to create an environment `.env` file for your project based on an example `local.env`. It will be created automatically with `composer create-project` command, but if you are starting a project using another method (e.g., `git clone & composer install`) then you need to create `.env` file manually by running: `composer env` or `cp .localconf/docker/local.env .env`._

    - Check environment variables and change them if it needed. By default no changes required.
    - OS-specific settings in `.env` file
        - **Linux**
            - Uncomment and set your host user id `USER_ID` in `.env` file to make shared folder writable. If your host `UID = 1000`, then you can skip this step. We are using UID 1000 by default.

4. Install dependencies `composer install`
5. Start all Docker services for a local development environment `docker-compose up -d`
6. Setup t3kit starter database `composer dbup` or `docker-compose exec web /var/www/html/.localconf/db/setupdb.sh`
7. Open `t3kit10.t3.localhost` in browser *_Google Chrome_

## Local development tools

### t3kit database manipulation - Setup/Restore/Pack

- Setup t3kit db: `composer dbup` or `docker-compose exec web /var/www/html/.localconf/db/setupdb.sh`
- Restore t3kit db: `composer dbre` or `docker-compose exec web /var/www/html/.localconf/db/restoredb.sh`
- Pack (save) t3kit db: `composer dbp` or `docker-compose exec web /var/www/html/.localconf/db/packdb.sh`

### phpMyAdmin

#### Run phpMyAdmin docker container and connect it to needed DB host

```shell
docker run --name pma -d -e PMA_ARBITRARY=1 --restart=unless-stopped --network nproxy -p 8083:80 phpmyadmin/phpmyadmin
```

### nginx-proxy

#### [nginx-proxy for t3kit10 project](https://github.com/t3kit/t3kit-dockerhub#nproxy)

For all t3kit projects, we need just a one `nginx-proxy` started as a separate Docker container. [Based on Automated Nginx Reverse Proxy for Docker](https://github.com/jwilder/nginx-proxy)

##### Run nproxy with docker-compose

```shell
git clone git@github.com:t3kit/nproxy.git
cd nproxy
docker-compose up -d
```
