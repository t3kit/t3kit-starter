# t3kit-starter

## Starter point for t3kit project

- Project structure
- t3kit and TYPO3 dependencies
- Custom site configurations
- Local environment based on Docker
- t3kit starter DB
- CI configs
- Tests

***

- [Local development using Docker](#local-development-using-docker)
- [Production](#production)
- [FAQ](#faq)

***

## Local development using Docker

### Required dependencies

- [Git](https://git-scm.com/)
- [Composer](https://getcomposer.org/) >= v1.8.0
- [Docker](https://docs.docker.com/install/) >= v18.09.1
- [Docker Compose](https://docs.docker.com/compose/install/) >= v1.23.2

***

### 1. Clone and install dependencies

  ```shell
  git clone git@github.com:t3kit/t3kit-starter.git
  cd t3kit-starter
  composer install
  ```

### 2. Add new virtual host on your local machine

  _*Note: use this pattern `PROJECT_NAME.local` to add new virtual host. For example `t3kit9.local`_

1. `nano /etc/hosts`
2. add a new line at the end `127.0.0.1 PROJECT_NAME.local`

### 3. Check that [nginx-proxy](#nginx-proxy) started

### 4. Setup a local development environment based on Docker and Docker compose

   _*Note: To continue with Docker you need to create an environment `.env` file for your project based on an example `.env.example`._

1. `cp .t3kit/docker/.env.example .env`

2. **!!!Step only for MAC users**. Uncomment `CACHED=:cached` in `.env` file to increase [Docker performance on Mac.](https://docs.docker.com/docker-for-mac/osxfs-caching/)

3. Change `COMPOSE_PROJECT_NAME` variable in `.env` file. It should be the same as a virtual host name without suffix `.local`. By default, it is `t3kit9`

4. Change others variables in `.env` file if it needed. Follow instructions inside of `.env` file. By default, it is enough just to change only one `COMPOSE_PROJECT_NAME` variable.

5. Start all Docker services for a local development environment `docker-compose up -d`

6. Setup t3kit starter database `docker-compose exec web /var/www/html/.t3kit/db/setupdb.sh`

### t3kit database manipulation - Setup/Restore/Pack

- Setup t3kit db: `docker-compose exec web /var/www/html/.t3kit/db/setupdb.sh`
- Restore t3kit db: `docker-compose exec web /var/www/html/.t3kit/db/restoredb.sh`
- Pack (save) t3kit db: `docker-compose exec web /var/www/html/.t3kit/db/packdb.sh`

### Stop and remove Docker services for a local development environment

- `docker-compose down`

### phpMyAdmin

#### Run phpMyAdmin docker container and connect it to needed DB host

```shell
docker run --name pma -d -e PMA_ARBITRARY=1 --network nproxy -p 8083:80 phpmyadmin/phpmyadmin
```

***

## Production

### Clean up the project

If there no needs to use **t3kit** starter database or **Docker configuration** for local development, then just delete folder `.t3kit` from the root of your project - `rm -r .t3kit`

***

## nginx-proxy

### [nginx-proxy for t3kit9 projects](https://github.com/t3kit/nproxy)

For all t3kit projects, we need just a one `nginx-proxy` started as a separate Docker container. [Based on Automated Nginx Reverse Proxy for Docker](https://github.com/jwilder/nginx-proxy)

#### Run nproxy with docker-compose

```shell
git clone git@github.com:t3kit/nproxy.git
cd nproxy
docker-compose up -d
```

#### Run nproxy with docker

```shell
docker network create nproxy
docker run -d -p=80:80 --name=nproxy --restart=unless-stopped --network=nproxy -v=/var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy
```

***

## FAQ

***

TODO: composer create project
TODO: how to install several t3kit based project on the local environment
TODO: how to update t3kit based project
