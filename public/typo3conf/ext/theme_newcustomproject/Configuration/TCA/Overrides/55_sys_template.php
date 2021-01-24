<?php

defined('TYPO3_MODE') || die();


/*
* ###########################
* Include Static Template files
* ===========================
*/
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile(
    'theme_newcustomproject',
    'Configuration/TypoScript',
    '__THEME__ TypoScript'
);
