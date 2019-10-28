<?php

switch (\TYPO3\CMS\Core\Core\Environment::getContext()) {
    /*
    * ################################################
    * Development context for t3kit local development environment based on Docker Compose configuration
    * (.t3kit/docker/docker-compose.yml)
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

        $GLOBALS['TYPO3_CONF_VARS']['SYS']['systemLogLevel'] = 0;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['displayErrors'] = 1;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['errorHandlerErrors'] = 30466; // Default = 30466
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['belogErrorReporting'] = 30711; // Default = 30711
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['exceptionalErrors'] = 12290; // Default = 12290
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['trustedHostsPattern'] = getenv('VIRTUAL_HOST');
        break; //_______________________________________________________________________________________

    /*
    * ################################################
    * Production context for t3kit local testing environment based on Docker Compose configuration
    * (.t3kit/docker/docker-compose.yml)
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

        // FE
        $GLOBALS['TYPO3_CONF_VARS']['FE']['debug'] = false;

        // SYS
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['sitename'] = 'TYPO3 :: t3kit10 :: Production *(local)';
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['devIPmask'] = '';

        $GLOBALS['TYPO3_CONF_VARS']['SYS']['systemLogLevel'] = 2;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['displayErrors'] = 0;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['belogErrorReporting'] = 0;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['exceptionalErrors'] = 4096; // Default = 4096
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

        $GLOBALS['TYPO3_CONF_VARS']['SYS']['systemLogLevel'] = 0;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['displayErrors'] = 1;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['errorHandlerErrors'] = 30466; // Default = 30466
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['belogErrorReporting'] = 30711; // Default = 30711
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['exceptionalErrors'] = 12290; // Default = 12290
        break; //_______________________________________________________________________________________

    case 'Production':
        // SetEnv TYPO3_CONTEXT Production
        // BE
        $GLOBALS['TYPO3_CONF_VARS']['BE']['sessionTimeout'] = 3600;
        $GLOBALS['TYPO3_CONF_VARS']['BE']['debug'] = false;

        // FE
        $GLOBALS['TYPO3_CONF_VARS']['FE']['debug'] = false;

        // SYS
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['sitename'] = 'TYPO3 :: t3kit10 :: Production';
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['devIPmask'] = '';

        $GLOBALS['TYPO3_CONF_VARS']['SYS']['systemLogLevel'] = 2;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['displayErrors'] = 0;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['belogErrorReporting'] = 0;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['exceptionalErrors'] = 4096; // Default = 4096
        break; //_______________________________________________________________________________________
}
