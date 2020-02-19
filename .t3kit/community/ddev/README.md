# Set up a local development environment based on DDEV

These instructions require that you have installed DDEV. Read how to install [DDEV](https://ddev.readthedocs.io/en/stable/#installation)

1. Quickstart your project as described above.

2. `cd [project-dir]` (e.g. `cd t3kit-starter`)

3. Run `composer ddev:config`. Specify a project name or use the suggested project name. The other options should be correct, so keep the defaults.

4. Run `ddev start`

5. Run `ddev t3kit setupdb`

6. Visit your site at the project URL. (e.g. t3kit-starter.ddev.site)
