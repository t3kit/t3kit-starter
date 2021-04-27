# %$_project-name_$%

## General info

- [Contributing](https://github.com/t3kit/.github/blob/master/CONTRIBUTING.md)
- [Code of Conduct](https://github.com/t3kit/.github/blob/master/CODE_OF_CONDUCT.md)
- [Support](https://github.com/t3kit/.github/blob/master/SUPPORT.md)
- [Security Policy](https://github.com/t3kit/.github/blob/master/SECURITY.md)

***

## Required dependencies

- [Git](https://git-scm.com/)
- [Composer](https://getcomposer.org/) >= v2.0.8
- [Docker](https://docs.docker.com/install/) >= v20.10.2
- [Docker Compose](https://docs.docker.com/compose/install/) >= v1.27.4
- [Node.js](https://nodejs.org/en/download/) >= v14.15.1
- [NPM](https://nodejs.org/en/download/) >= v7.9.0

## Quick start

1. Check that [nginx-proxy](#nginx-proxy) started
2. Clone the repository
3. `composer env` - Configure local development environment variables

    **It will create two .env files:**

    1. `.env` file with environment variables for local development
        - Check all environment variables in `.env` file and change them if it needed
        - OS-specific settings in `.env` file
            - **Linux**
                - Uncomment `USER_ID` var and set up your host user id to make the shared folder writable. (Skip this step if you are a Mac user)
    2. `.localconf/composer/.env` file with environment variables to install composer dependencies based on proper PHP libs without relying on local PHP version.
        - OS-specific settings in `.localconf/composer/.env` file
            - **Linux**
                - Uncomment `USER_ID` var and set up your host user id to make the shared folder writable.
                - Uncomment `SSH_AUTH_SOCK_VOL=${SSH_AUTH_SOCK}` to enable ssh-agent forwarding on Linux if you are using private packages as composer dependencies
            - **Mac**
                - Uncomment `SSH_AUTH_SOCK_VOL=/run/host-services/ssh-auth.sock` to enable ssh-agent forwarding on Mac if you are using private packages as composer dependencies

4. `composer install` - Install composer dependencies. Or run `composer ci` to install dependencies from a container in case if platform requirements on local host are not correct.
5. `npm install` - Install npm dependencies.
6. `npm run dev` - Build development assests for themes.
7. `docker-compose up -d` - Start all Docker services for a local development environment
7. Open `%$_project-name_$%.t3.localhost` in browser *_Google Chrome_

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
