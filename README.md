<p align="center">
    <a href="http://t3kit.com/">
        <img src="https://user-images.githubusercontent.com/5150636/82044420-ff053600-96b5-11ea-8313-4158d6c0be5d.png" alt="t3kit logo" width="150" height="76">
    </a>
</p>

<h2 align="center">t3kit-starter</h2>
<h3 align="center">Starter point for a new project based on t3kit</h3>
<p align="center"><a href="https://t3kit.gitbook.io/doc/"><strong>t3kit documentation</strong></a></p>

[![Code Guidelines](https://github.com/t3kit/t3kit-starter/actions/workflows/code-guidelines.yml/badge.svg)](https://github.com/t3kit/t3kit-starter/actions/workflows/code-guidelines.yml)
[![Local development environment](https://github.com/t3kit/t3kit-starter/actions/workflows/local-dev-evironment.yml/badge.svg)](https://github.com/t3kit/t3kit-starter/actions/workflows/local-dev-evironment.yml)

## Table of contents

### t3kit-starter

- [About](#about)
- [What's included](#whats-included)
- [Required dependencies](#required-dependencies)
- [File structure](#file-structure)
- [Quick start a new project on t3kit base](#quick-start-a-new-project-on-t3kit-base)
- [Start with t3kit local development](#start-with-t3kit-local-development)
- [Create your custom theme based on t3kit to extend the functionality](#create-your-custom-theme-based-on-t3kit-to-extend-the-functionality)
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
- [Composer](https://getcomposer.org/) >= v2.1.8
- [Docker](https://docs.docker.com/install/) >= v20.10.8
- [Docker Compose](https://docs.docker.com/compose/cli-command/#installing-compose-v2) >= v2.0.0
- [Node.js](https://nodejs.org/en/download/) >= v16.12.0
- [NPM](https://nodejs.org/en/download/) >= v8.0.0

## File structure

```text
t3kit-starter/
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

If there no needs to use **t3kit** starter database or **Docker configuration** for local development, then just delete folder `.localconf` from the root of your project `rm -r .localconf`

***

## Quick start a new project on t3kit base (two options)

1. Start with `composer create-project`

    ```shell
    composer create-project --no-dev --no-scripts --remove-vcs t3kit/t3kit-starter my-new-project v11.0.0-beta.2
    ```

2. Or use as a template in *GitHub* (recommended). If you are using *GitHub* to store your future project, then you can just clone *t3kit-starter* as a template to your new project repository with `Use this template` green button in *t3kit* organization in the *t3kit-starter* repository.

## Start with t3kit local development

1. Check that [nginx-proxy](#nginx-proxy) started
2. `git clone git@github.com:t3kit/t3kit-starter.git` - Clone the repository
3. `composer env` - Configure local development environment variables

    _*Note: To continue with Docker based local development you need to create an environment `.env` file for your project based on an example `local.env`. You can create `.env` file by running: `composer env` as described above or `cp .localconf/local.env .env`._

    - Check all environment variables in `.env` file and change them if it needed
    - OS-specific settings in `.env` file
        - **Linux**
            - Uncomment `USER_ID` var and set up your host user id to make the shared folder writable. (Skip this step if you are a Mac user)

4. `composer i` - Install composer dependencies, or run `composer ci` if you don't have PHP v8 as your main local environment
5. `npm install` - Install npm dependencies
6. `npm run dev` - Build development assests for themes
7. `docker compose up -d` - Start all Docker services for a local development environment
8. Setup t3kit starter database `composer dbup`
9. Open `t3kit11.t3.localhost` in browser _Google Chrome_
10. Open TYPO3 BE `t3kit11.t3.localhost/typo3` ---> *[user: `admin`, password: `admin1234`]*
11. Open TYPO3 Install tool `t3kit11.t3.localhost/typo3/install.php` ---> *[password: `admin1234`]*

***

## Create your custom theme based on t3kit to extend the functionality.

`public/typo3conf/ext/theme_newcustomproject` in this folder you can find an example of TYPO3 extension that can be a good starting point for extending the default t3kit theme. With this "subtheme" extension, you can change the design and add the necessary content elements while maintaining the main features of t3kit, and the ability to easily upgrade to newer versions of TYPO3 and t3kit.

### Quick start

1. Define a `name` for your new theme. For example, let's take the name `mega`
2. Create a new extension based on `theme_newcustomproject`
    ```shell
    cp -r public/typo3conf/ext/theme_newcustomproject public/typo3conf/ext/theme_mega
    ```
    _Note: Change the `mega` part in `public/typo3conf/ext/theme_mega` to your real project neme_
3. Rename `newcustomproject` to your project name. In our example, we are using `mega` as a project name.

    - **Mac**
    ```shell
        grep -rl 'newcustomproject' public/typo3conf/ext/theme_mega | xargs sed -i '' 's/newcustomproject/mega/g'
    ```
    - **Linux**
    ```shell
        grep -rl 'newcustomproject' public/typo3conf/ext/theme_mega | xargs sed -i 's/newcustomproject/mega/g'
    ```
_Note: Change the `mega` part in `**/ext/theme_mega` and `s/newcustomproject/mega/g` to your real project neme_

4. Activate `theme_mega` extension

    - add new repository to root `composer.json`
    ```json
        "repositories": [
            {
            "type": "path",
            "url": "public/typo3conf/ext/theme_mega"
            }
        ],
    ```

    - Install a new `theme_mega` extension
    ```shell
        composer co require typo3-local/theme_mega
        npm install
        npm run dev
    ```

5. Enable `theme_mega` for the site `Site Management -> Sites -> Site Theme`

***

## Local development tools

### t3kit database manipulation - Setup/Restore/Pack

- Setup t3kit db: `composer dbup`
- Restore t3kit db: `composer dbre`
- Pack (save) t3kit db: `composer dbp`

### phpMyAdmin

#### Run phpMyAdmin docker container and connect it to needed DB host

```shell
docker run --name pma -d -e PMA_ARBITRARY=1 --restart=unless-stopped --network nproxy -p 8083:80 phpmyadmin/phpmyadmin
```

### nginx-proxy

#### [nginx-proxy for t3kit11 project](https://github.com/t3kit/t3kit-dockerhub#nproxy)

For all t3kit projects, we need just a one `nginx-proxy` started as a separate Docker container. [Based on Automated Nginx Reverse Proxy for Docker](https://github.com/nginx-proxy/nginx-proxy)

##### Setup

```shell
git clone git@github.com:t3kit/t3kit-dockerhub.git
cd t3kit-dockerhub/nproxy
docker compose up -d
```

## Community-contributed platforms

These platforms are not officially supported by the t3kit team.

* [Use t3kit with DDEV](.localconf/community/ddev/README.md)
