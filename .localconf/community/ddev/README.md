# Set up a local development environment based on DDEV

## Installation

These instructions require that you have installed DDEV. Read how to install [DDEV](https://ddev.readthedocs.io/en/stable/#installation)

1. Quickstart your project by running `composer create-project -s dev --remove-vcs t3kit/t3kit-starter [<directory>] [<version>]`

2. `cd [project-dir]` (e.g. `cd t3kit-starter`)

3. Run `composer ddev-config`. Specify a project name or use the suggested project name. The other options should be correct, so keep the defaults.

4. Run `ddev start`

5. Run `ddev composer install` to install Composer dependencies.

6. Run `ddev exec npm install` to install NPM dependencies.

7. Run `ddev exec npm run dev` to build development assests for themes.

8. Run `ddev import-db --src=.localconf/db/dbdump/t3kit11.sql` to import the database.

9. Visit your site at the project URL. (e.g. https://t3kit-starter.ddev.site)

You can run `ddev typo3 [COMMAND]` and `ddev typo3cms [COMMAND]` to directly execute the TYPO3 CLI and helhum/typo3-console commands.

## Watching for changes with NPM

Since we are running NPM within DDEV's Docker container, watching for file changes should also be done there. 
This requires that you SSH into the container and execute the code there.

Since it will be running constantly, we recommend opening a new terminal window and tab for this command.

1. Make sure the project directory is the working directory. (`cd [project-dir]`, e.g. `cd /path/to/myprojects/t3kit-starter`)

2. Run `ddev ssh` to enter the container's Bash shell.

3. Run `cd public/typo3conf/ext/theme_mytheme` to change into you're theme's directory. (Assuming `theme_mytheme` is the name of your theme extension.)

4. Run `npm run start` to start watching for changes in the theme's CSS and JavaScript files.

You can stop the script by hitting `ctrl + C`. You can run `exit` to exit the DDEV container's shell.
