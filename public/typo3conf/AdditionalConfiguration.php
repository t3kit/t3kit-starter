<?php

switch (\TYPO3\CMS\Core\Utility\GeneralUtility::getApplicationContext()) {

    case 'Development/t3kit9': // =========================================================================
        // SetEnv TYPO3_CONTEXT Development/t3kit9
        // DB
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['host'] = getenv('DB_CONTAINER_NAME');
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['dbname'] = getenv('DB_NAME');
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['user'] = getenv('DB_USER');
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['password'] = getenv('DB_PASSWORD');

        // BE
        $GLOBALS['TYPO3_CONF_VARS']['BE']['sessionTimeout'] = 28800;
        $GLOBALS['TYPO3_CONF_VARS']['BE']['debug'] = true;

        // FE
        $GLOBALS['TYPO3_CONF_VARS']['FE']['debug'] = true;

        // SYS
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['sitename'] = 'TYPO3 :: t3kit v9.0.0 :: Dev mode';
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['devIPmask'] = '*';
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['displayErrors'] = 1;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['errorHandlerErrors'] = 30711; // Default = 30466
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['exceptionalErrors'] = 14325; // Default = 4096
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['belogErrorReporting'] = 30711; // Default = 30711
    break; //__________________________________________________________________________________________________________________



    case 'Development/t3kit9-sqlite': // ==================================================================
        // SetEnv TYPO3_CONTEXT Development/t3kit9-sqlite
        // DB
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['driver'] = 'pdo_sqlite';
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['path'] = '/var/www/html/db/sqlite/t3kit9.sqlite';

        // BE
        $GLOBALS['TYPO3_CONF_VARS']['BE']['sessionTimeout'] = 28800;
        $GLOBALS['TYPO3_CONF_VARS']['BE']['debug'] = true;

        // FE
        $GLOBALS['TYPO3_CONF_VARS']['FE']['debug'] = true;

        // SYS
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['sitename'] = 'TYPO3 :: t3kit v9.0.0 :: Dev mode *(SQLite)';
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['devIPmask'] = '*';
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['displayErrors'] = 1;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['errorHandlerErrors'] = 30711; // Default = 30466
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['exceptionalErrors'] = 14325; // Default = 4096
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['belogErrorReporting'] = 30711; // Default = 30711

    break; //__________________________________________________________________________________________________________________



    case 'Development/t3kit9-test': // =============================================================================================
        // SetEnv TYPO3_CONTEXT Development/t3kit9-test
        // DB
        // $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['host'] =
        // $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['dbname'] =
        // $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['user'] =
        // $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['password'] =

        // BE
        $GLOBALS['TYPO3_CONF_VARS']['BE']['sessionTimeout'] = 28800;
        $GLOBALS['TYPO3_CONF_VARS']['BE']['debug'] = true;

        // FE
        $GLOBALS['TYPO3_CONF_VARS']['FE']['debug'] = true;

        // SYS
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['sitename'] = 'TYPO3 :: t3kit v9.0.0 :: Test mode';
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['devIPmask'] = '*';
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['displayErrors'] = 1;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['errorHandlerErrors'] = 30711; // Default = 30466
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['exceptionalErrors'] = 14325; // Default = 4096
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['belogErrorReporting'] = 30711; // Default = 30711

    break; //__________________________________________________________________________________________________________________




    case 'Production': // =============================================================================================
        // SetEnv TYPO3_CONTEXT Production
        // BE
        $GLOBALS['TYPO3_CONF_VARS']['BE']['sessionTimeout'] = 3600;
        $GLOBALS['TYPO3_CONF_VARS']['BE']['debug'] = false;

        // FE
        $GLOBALS['TYPO3_CONF_VARS']['FE']['debug'] = false;

        // SYS
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['devIPmask'] = '';
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['displayErrors'] = 0;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['errorHandlerErrors'] = 30466; // Default = 30466
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['exceptionalErrors'] = 12290; // // Default = 4096
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['belogErrorReporting'] = 4437; // Default = 30711
    break; //__________________________________________________________________________________________________________________
}
