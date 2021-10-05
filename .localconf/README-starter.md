# %$_project-name_$%

## General info

- [Contributing](https://github.com/t3kit/.github/blob/master/CONTRIBUTING.md)
- [Code of Conduct](https://github.com/t3kit/.github/blob/master/CODE_OF_CONDUCT.md)
- [Support](https://github.com/t3kit/.github/blob/master/SUPPORT.md)
- [Security Policy](https://github.com/t3kit/.github/blob/master/SECURITY.md)

***

## Required dependencies

- [Git](https://git-scm.com/)
- [Composer](https://getcomposer.org/) >= v2.1.8
- [Docker](https://docs.docker.com/install/) >= v20.10.8
- [Docker Compose](https://docs.docker.com/compose/install/) >= v2.0.0
- [Node.js](https://nodejs.org/en/download/) >= v14.15.1
- [NPM](https://nodejs.org/en/download/) >= v7.9.0

## Quick start

1. Check that [nginx-proxy](#nginx-proxy) started
2. Clone the repository
3. `composer env` - Configure local development environment variables

    _*Note: To continue with Docker you need to create an environment `.env` file for your project based on an example `local.env`. You need to create `.env` file manually by running: `composer env` or `cp .localconf/local.env .env`._
    - Check all environment variables in `.env` file and change them if it needed
    - OS-specific settings in `.env` file
        - **Linux**
            - Uncomment `USER_ID` var and set up your host user id to make the shared folder writable. (Skip this step if you are a Mac user)

4. `composer ci` - Install composer dependencies
5. `npm install` - Install npm dependencies
6. `npm run dev` - Build development assests for themes
7. `docker compose up -d` - Start all Docker services for a local development environment
7. Open `%$_project-name_$%.t3.localhost` in browser *_Google Chrome_

## nginx-proxy

### [nginx-proxy for t3kit11 project](https://github.com/t3kit/t3kit-dockerhub#nproxy)

For all t3kit projects, we need just a one `nginx-proxy` started as a separate Docker container. [Based on Automated Nginx Reverse Proxy for Docker](https://github.com/jwilder/nginx-proxy)

#### Run nproxy with docker compose

```shell
git clone git@github.com:t3kit/nproxy.git
cd nproxy
docker compose up -d
```

## [README t3kit](./t3kit.md)
