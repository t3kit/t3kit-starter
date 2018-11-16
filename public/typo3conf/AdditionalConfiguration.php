<?php

switch (\TYPO3\CMS\Core\Utility\GeneralUtility::getApplicationContext()) {
    case 'Development/t3kit9':
        // SetEnv TYPO3_CONTEXT Development/t3kit9
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['sitename'] = 'TYPO3 :: t3kit v9.0.0 :: Dev mode';
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['host'] = getenv('DB_CONTAINER_NAME');
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['dbname'] = getenv('DB_NAME');
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['user'] = getenv('DB_USER');
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['password'] = getenv('DB_PASSWORD');
    break;

    case 'Development/t3kit9-sqlite':
        // SetEnv TYPO3_CONTEXT Development/t3kit9-sqlite
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['sitename'] = 'TYPO3 :: t3kit v9.0.0 :: Dev mode *(SQLite)';

        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['driver'] = 'pdo_sqlite';
        $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['path'] = '/var/www/html/db/sqlite/t3kit9.sqlite';
        break;

        case 'Development/t3kit9-test':
        // SetEnv TYPO3_CONTEXT Development/t3kit9-test
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['sitename'] = 'TYPO3 :: t3kit v9.0.0 :: Test mode';

    break;

    case 'Production':
        // SetEnv TYPO3_CONTEXT Production
    break;
}
