## Quick start

1. Check that [nginx-proxy](#nginx-proxy) started
2. Clone the repository
3. `composer env` - Configure local development environment variables

    _*Note: To continue with Docker based local development you need to create an environment `.env` file for your project based on an example `local.env`. You can create `.env` file by running: `composer env` as described above or `cp .localconf/local.env .env`._

    - Check all environment variables in `.env` file and change them if it needed
    - OS-specific settings in `.env` file
        - **Linux**
            - Uncomment `USER_ID` var and set up your host user id to make the shared folder writable. (Skip this step if you are a Mac user)

4. `composer ci` - Install composer dependencies
5. `npm install` - Install npm dependencies
6. `npm run dev` - Build development assests for themes
7. `docker compose up -d` - Start all Docker services for a local development environment
7. Open `%$_project-name_$%.t3.localhost` in browser *_Google Chrome_
