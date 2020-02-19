# Set up a local development environment based on DDEV

These instructions require that you have installed DDEV. Read how to install [DDEV](https://ddev.readthedocs.io/en/stable/#installation)

1. Quickstart your project by running `composer create-project -s dev --remove-vcs t3kit/t3kit-starter [<directory>] [<version>]`

2. `cd [project-dir]` (e.g. `cd t3kit-starter`)

3. Run `composer install`

4. Run `composer ddev-config`. Specify a project name or use the suggested project name. The other options should be correct, so keep the defaults.

5. Run `ddev start`

6. Run `ddev t3kit setupdb`

7. Visit your site at the project URL. (e.g. https://t3kit-starter.ddev.site)
