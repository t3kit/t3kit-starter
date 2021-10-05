<?php

/**
 * Platform.sh-specific configuration for TYPO3.
 *
 * You may edit this file as desired, but connection configuration
 * should be based on Platform.sh environment variables.
 */

declare(strict_types=1);

use Platformsh\ConfigReader\Config;

$platformConfig = new Config();

if (!$platformConfig->isValidPlatform()) {
    return;
}

if ($platformConfig->inBuild()) {
    return;
}

// Read all routes and set coresponding env variables for sites configurations
foreach ($platformConfig->routes() as $route) {
    $id = $route['id'] ?? '';
    if (empty($id)) {
        continue;
    }
    putenv(sprintf('PLATFORM_ROUTES_%s=%s', strtoupper($id), $route['url']));
}

// Configure the database based on the Platform.sh relationships.
if ($platformConfig->hasRelationship('database')) {
    $databaseConfig = $platformConfig->credentials('database');
    $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['driver'] = 'mysqli';
    $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['host'] = $databaseConfig['host'];
    $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['port'] = $databaseConfig['port'];
    $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['dbname'] = $databaseConfig['path'];
    $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['user'] = $databaseConfig['username'];
    $GLOBALS['TYPO3_CONF_VARS']['DB']['Connections']['Default']['password'] = $databaseConfig['password'];
}

// Configure Redis as the cache backend if available.
if ($platformConfig->hasRelationship('rediscache')) {
    $redisConfig = $platformConfig->credentials('rediscache');
    $redisHost = $redisConfig['host'];
    $redisPort = $redisConfig['port'];
    $list = [
        'pages' => 3600 * 24,
        'pagesection' => 3600 * 24,
        'rootline' => 3600 * 24,
        'hash' => 3600 * 24,
        'extbase' => 3600 * 24,
    ];
    $counter = 1;
    foreach ($list as $key => $lifetime) {
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['caching']['cacheConfigurations'][$key]['backend'] = \TYPO3\CMS\Core\Cache\Backend\RedisBackend::class;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['caching']['cacheConfigurations'][$key]['options'] = [
            'database' => $counter++,
            'hostname' => $redisHost,
            'port' => $redisPort,
            'defaultLifetime' => $lifetime
        ];
    }

    // TYPO3_CONTEXT Development in Platform SH
    if (getenv("PLATFORM_BRANCH") === 'development') {
        // BE
        $GLOBALS['TYPO3_CONF_VARS']['BE']['sessionTimeout'] = 28800;
        $GLOBALS['TYPO3_CONF_VARS']['BE']['debug'] = true;

        // FE
        $GLOBALS['TYPO3_CONF_VARS']['FE']['debug'] = true;

        // SYS
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['sitename'] = 'TYPO3 :: t3kit11 :: Dev mode';
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['devIPmask'] = '*';

        $GLOBALS['TYPO3_CONF_VARS']['SYS']['displayErrors'] = 1;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['exceptionalErrors'] = 28674;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['errorHandlerErrors'] = 30466;
        $GLOBALS['TYPO3_CONF_VARS']['SYS']['belogErrorReporting'] = 30711;
    }
}

// Ensure that HTTP requests have a timeout set, to avoid sites locking up due to slow
// outgoing HTTP requests.
$GLOBALS['TYPO3_CONF_VARS']['HTTP']['timeout'] = 3;
