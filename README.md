# t3kit-starter

## README draft

***

### [Start nginx-proxy for t3kit9](https://github.com/t3kit/nproxy)

```shell
git clone git@github.com:t3kit/nproxy.git
cd nproxy
docker compose up
```

### Start with t3kit-starter

#### Clone and install dependencies

```shell
git clone git@github.com:t3kit/t3kit-starter.git
cd t3kit-starter
composer install --ignore-platform-reqs
```

#### Add new virtual host on your local machine

  _*Note: use this pattern `PROJECT_NAME.local` to add new virtual host._

1. `nano /etc/hosts`
2. add a new line at the end `127.0.0.1 t3kit9.local`

#### Setup a local development environment based on Docker and Docker compose

   _*Note: To continue with Docker you need to create docker environment `.env` file for your project based on an example '.env.example' or for MAC users `.env.mac.example`. All environments variables could be adapted to your specific needs._

1. `cp .env.example .env`  _*or for MAC users_ `cp .env.mac.example .env`

2. change `PROJECT_NAME` variable in `.env` file. It should be the same as a virtual host name. By default, it is `t3kit9`

3. Change others variables in `.env` file if it needed. Follow instructions inside of `.enf` file. By default, it is enough just to change only one `PROJECT_NAME` variable

4. `docker-compose up`

5. `docker-compose exec web /var/www/html/db/mysql/setupdb.sh`

### t3kit database manipulation - Setup/Restore/Pack

* Setup t3kit db: `docker-compose exec web /var/www/html/db/mysql/setupdb.sh`
* Restore t3kit db: `docker-compose exec web /var/www/html/db/mysql/restoredb.sh`
* Pack (save) t3kit db: `docker-compose exec web /var/www/html/db/mysql/packdb.sh`
