# t3kit-starter

## README draft

***

## Required dependencies

### To install dependencies

* [Git](https://git-scm.com/)
* [Composer](https://getcomposer.org/) >= v1.8.0

### For local development using Docker

* [Docker](https://docs.docker.com/install/) >= v18.09.1
* [Docker Compose](https://docs.docker.com/compose/install/) >= v1.23.2

***

## [nginx-proxy for t3kit9 projects](https://github.com/t3kit/nproxy)

For all t3kit projects, we need just a one `nginx-proxy` started as a separate Docker container. [Based on Automated Nginx Reverse Proxy for Docker](https://github.com/jwilder/nginx-proxy)

### nproxy with docker-compose

```shell
git clone git@github.com:t3kit/nproxy.git
cd nproxy
docker compose up -d
```

### nproxy with docker

```shell
docker network create nproxy
docker run -d -p=80:80 --name=nproxy --restart=unless-stopped --network=nproxy -v=/var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy
```

***

## Getting started with t3kit-starter

### Clone and install dependencies

```shell
git clone git@github.com:t3kit/t3kit-starter.git
cd t3kit-starter
composer install --ignore-platform-reqs
```

### Add new virtual host on your local machine

  _*Note: use this pattern `PROJECT_NAME.local` to add new virtual host._

1. `nano /etc/hosts`
2. add a new line at the end `127.0.0.1 t3kit9.local`

### Setup a local development environment based on Docker and Docker compose

   _*Note: To continue with Docker you need to create a Docker environment `.env` file for your project root based on an example `.env.example`._

1. `cp .t3kit/docker/.env.example .env`

2. **!!!Step only for MAC users**. Uncomment `CACHED=:cached` in `.env` file to increase [Docker performance on Mac.](https://docs.docker.com/docker-for-mac/osxfs-caching/)

3. Change `PROJECT_NAME` variable in `.env` file. It should be the same as a virtual host name. By default, it is `t3kit9`

4. Change others variables in `.env` file if it needed. Follow instructions inside of `.enf` file. By default, it is enough just to change only one `PROJECT_NAME` variable.

5. `docker-compose up`

6. `docker-compose exec web /var/www/html/.t3kit/db/mysql/setupdb.sh`

## t3kit database manipulation - Setup/Restore/Pack

* Setup t3kit db: `docker-compose exec web /var/www/html/.t3kit/db/mysql/setupdb.sh`
* Restore t3kit db: `docker-compose exec web /var/www/html/.t3kit/db/mysql/restoredb.sh`
* Pack (save) t3kit db: `docker-compose exec web /var/www/html/.t3kit/db/mysql/packdb.sh`

***

## Clean up your project

If there no needs to use **t3kit** starter database or **Docker configuration** for local development, then just delete folder `.t3kit` from the root of your project - `rm -r .t3kit`

***
