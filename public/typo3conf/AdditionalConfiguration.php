<?php

switch (\TYPO3\CMS\Core\Core\Environment::getContext()) {
    /*
    * ################################################
    * Development context for local development environment based on Docker Compose configuration
    * (.localconf/docker/docker-compose.yml)
    * ===============================================
    */
    case 'Development/local':
        // SetEnv TYPO3_CONTEXT Development/local
        // DB
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['host'] = getenv('DB_HOST');
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['dbname'] = getenv('DB_NAME');
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['user'] = getenv('DB_USER');
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['password'] = getenv('MYSQL_ROOT_PASSWORD');

        // BE
        $GLOBALS['TYPO3_CONF_VARS']['BE']['sessionTimeout'] = 28800;
        $GLOBALS['TYPO3_CONF_VARS']['BE']['debug'] = true;

        // FE
        $GLOBALS['TYPO3_CONF_VARS']['FE']['debug'] = true;

        // SYS
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['sitename'] = 'TYPO3 :: t3kit10 :: Dev mode *(local)';
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['devIPmask'] = '*';

        // Error and exception handling
        // https://maximivanov.github.io/php-error-reporting-calculator/
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['displayErrors'] = 1;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['exceptionalErrors'] = 28674;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['errorHandlerErrors'] = 30466;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['belogErrorReporting'] = 30711;

        $GLOBALS['TYPO3_CONF_VARS']['SYS']['features']['security.backend.enforceReferrer'] = 0;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['trustedHostsPattern'] = '.*(\.t3\.localhost|\.ddev\.site)';
        // $GLOBALS['TYPO3_CONF_VARS']['SYS']['trustedHostsPattern'] = '.*';
        break; //_______________________________________________________________________________________

    /*
    * ################################################
    * Production context for local testing environment based on Docker Compose configuration
    * (.localconf/docker/docker-compose.yml)
    * ===============================================
    */
    case 'Production/local':
        // SetEnv TYPO3_CONTEXT Production/local
        // DB
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['host'] = getenv('DB_HOST');
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['dbname'] = getenv('DB_NAME');
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['user'] = getenv('DB_USER');
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['password'] = getenv('MYSQL_ROOT_PASSWORD');

        // BE
        $GLOBALS['TYPO3_CONF_VARS']['BE']['sessionTimeout'] = 3600;
        $GLOBALS['TYPO3_CONF_VARS']['BE']['debug'] = false;
        $GLOBALS['TYPO3_CONF_VARS']['BE']['compressionLevel'] = 5;

        // FE
        $GLOBALS['TYPO3_CONF_VARS']['FE']['debug'] = false;
        $GLOBALS['TYPO3_CONF_VARS']['FE']['compressionLevel'] = 5;

        // SYS
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['sitename'] = 'TYPO3 :: t3kit10 :: Production *(local)';
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['devIPmask'] = '';

        // Error and exception handling
        // https://maximivanov.github.io/php-error-reporting-calculator/
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['displayErrors'] = 0;
        // Disable deprecation log
        $GLOBALS['TYPO3_CONF_VARS']['LOG']['TYPO3']['CMS']['deprecations']['writerConfiguration'][\TYPO3\CMS\Core\Log\LogLevel::NOTICE][\TYPO3\CMS\Core\Log\Writer\FileWriter::class]['disabled'] = true; // phpcs:ignore

        $GLOBALS['TYPO3_CONF_VARS']['SYS']['features']['security.backend.enforceReferrer'] = 0;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['trustedHostsPattern'] = '.*(\.t3\.localhost|\.ddev\.site)';
        // $GLOBALS['TYPO3_CONF_VARS']['SYS']['trustedHostsPattern'] = '.*';
        break; //_______________________________________________________________________________________

    case 'Development':
        // SetEnv TYPO3_CONTEXT Development
        // BE
        $GLOBALS['TYPO3_CONF_VARS']['BE']['sessionTimeout'] = 28800;
        $GLOBALS['TYPO3_CONF_VARS']['BE']['debug'] = true;

        // FE
        $GLOBALS['TYPO3_CONF_VARS']['FE']['debug'] = true;

        // SYS
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['sitename'] = 'TYPO3 :: t3kit10 :: Dev mode';
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['devIPmask'] = '*';

        // Error and exception handling
        // https://maximivanov.github.io/php-error-reporting-calculator/
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['displayErrors'] = 1;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['exceptionalErrors'] = 28674;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['errorHandlerErrors'] = 30466;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['belogErrorReporting'] = 30711;
        break; //_______________________________________________________________________________________

    case 'Production':
        // SetEnv TYPO3_CONTEXT Production
        // BE
        $GLOBALS['TYPO3_CONF_VARS']['BE']['sessionTimeout'] = 3600;
        $GLOBALS['TYPO3_CONF_VARS']['BE']['debug'] = false;
        $GLOBALS['TYPO3_CONF_VARS']['BE']['compressionLevel'] = 5;
        $GLOBALS['TYPO3_CONF_VARS']['BE']['lockSSL'] = true;

        // FE
        $GLOBALS['TYPO3_CONF_VARS']['FE']['debug'] = false;
        $GLOBALS['TYPO3_CONF_VARS']['FE']['compressionLevel'] = 5;

        // SYS
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['sitename'] = 'TYPO3 :: t3kit10 :: Production';
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['devIPmask'] = '';

        // Error and exception handling
        // https://maximivanov.github.io/php-error-reporting-calculator/
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['displayErrors'] = 0;
        // Disable deprecation log
        $GLOBALS['TYPO3_CONF_VARS']['LOG']['TYPO3']['CMS']['deprecations']['writerConfiguration'][\TYPO3\CMS\Core\Log\LogLevel::NOTICE][\TYPO3\CMS\Core\Log\Writer\FileWriter::class]['disabled'] = true; // phpcs:ignore
        // Disable warning-level logging
        $GLOBALS['TYPO3_CONF_VARS']['LOG']['writerConfiguration'][\TYPO3\CMS\Core\Log\LogLevel::WARNING][\TYPO3\CMS\Core\Log\Writer\FileWriter::class]['disabled'] = 1; // phpcs:ignore
        // Enable error-level logging
        $GLOBALS['TYPO3_CONF_VARS']['LOG']['writerConfiguration'][\TYPO3\CMS\Core\Log\LogLevel::ERROR][\TYPO3\CMS\Core\Log\Writer\FileWriter::class]['disabled'] = 0; // phpcs:ignore
        break; //_______________________________________________________________________________________
}
