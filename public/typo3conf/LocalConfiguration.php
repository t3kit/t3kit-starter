<?php
return [
    'BE' => [
        'debug' => true,
        'explicitADmode' => 'explicitAllow',
        'installToolPassword' => '$argon2id$v=19$m=65536,t=16,p=1$c2ZMejFiZmNKeHo1WElUZQ$865eIoY3fy0qtRdfP611cYhkpz6Mg/IoR7Dj44QKDzg',
        'passwordHashing' => [
            'className' => 'TYPO3\\CMS\\Core\\Crypto\\PasswordHashing\\Argon2idPasswordHash',
            'options' => [],
        ],
    ],
    'DB' => [
        'Connections' => [
            'Default' => [
                'charset' => 'utf8',
                'driver' => 'mysqli',
                'port' => 3306,
            ],
        ],
    ],
    'EXTENSIONS' => [
        'backend' => [
            'backendFavicon' => 'EXT:t3kit/Resources/Public/Images/Backend/be-favicon.ico',
            'backendLogo' => '',
            'loginBackgroundImage' => '',
            'loginFootnote' => 't3kit',
            'loginHighlightColor' => '#010101',
            'loginLogo' => 'EXT:t3kit/Resources/Public/Images/Backend/login-logo.svg',
            'loginLogoAlt' => 't3kit',
        ],
        'extensionmanager' => [
            'automaticInstallation' => '0',
            'offlineMode' => '1',
        ],
        'scheduler' => [
            'maxLifetime' => '1440',
            'showSampleTasks' => '1',
        ],
        't3kit' => [
            'disableBELayouts' => '0',
            'disableContentElements' => '0',
            'disableRTE' => '0',
            'disableTCAdefaults' => '0',
            'disableTCEFORM' => '0',
            'disableTCEMAIN' => '0',
            'disableUserTSoptions' => '0',
        ],
    ],
    'FE' => [
        'debug' => true,
        'disableNoCacheParameter' => true,
        'passwordHashing' => [
            'className' => 'TYPO3\\CMS\\Core\\Crypto\\PasswordHashing\\Argon2idPasswordHash',
            'options' => [],
        ],
        'versionNumberInFilename' => '',
    ],
    'GFX' => [
        'jpg_quality' => 70,
        'processor' => 'GraphicsMagick',
        'processor_allowTemporaryMasksAsPng' => false,
        'processor_allowUpscaling' => false,
        'processor_colorspace' => 'RGB',
        'processor_effects' => false,
        'processor_enabled' => true,
        'processor_interlace' => 'Line',
        'processor_path' => '/usr/bin/',
        'processor_path_lzw' => '/usr/bin/',
    ],
    'LOG' => [
        'TYPO3' => [
            'CMS' => [
                'deprecations' => [
                    'writerConfiguration' => [
                        'notice' => [
                            'TYPO3\CMS\Core\Log\Writer\FileWriter' => [
                                'disabled' => false,
                            ],
                        ],
                    ],
                ],
            ],
        ],
    ],
    'MAIL' => [
        'transport' => 'sendmail',
        'transport_sendmail_command' => '/usr/sbin/sendmail -t -i',
        'transport_smtp_encrypt' => '',
        'transport_smtp_password' => '',
        'transport_smtp_server' => '',
        'transport_smtp_username' => '',
    ],
    'SYS' => [
        'caching' => [
            'cacheConfigurations' => [
                'hash' => [
                    'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
                ],
                'imagesizes' => [
                    'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
                    'options' => [
                        'compression' => true,
                    ],
                ],
                'pages' => [
                    'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
                    'options' => [
                        'compression' => true,
                    ],
                ],
                'pagesection' => [
                    'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
                    'options' => [
                        'compression' => true,
                    ],
                ],
                'rootline' => [
                    'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
                    'options' => [
                        'compression' => true,
                    ],
                ],
            ],
        ],
        'devIPmask' => '*',
        'displayErrors' => 1,
        'encryptionKey' => 'c2559bd9c61ccf05059bdef05807275b79e6c36bee2563265062138ff4a4e110965d8ff21971cd621f97c4429cec2221',
        'exceptionalErrors' => 12290,
        'features' => [
            'redirects.hitCount' => true,
            'security.backend.enforceReferrer' => true,
            'security.backend.htmlSanitizeRte' => true,
            'security.frontend.htmlSanitizeParseFuncDefault' => true,
            'subrequestPageErrors' => true,
            'unifiedPageTranslationHandling' => true,
            'yamlImportsFollowDeclarationOrder' => true,
        ],
        'sitename' => 'TYPO3 :: t3kit10 :: Dev mode *(local)',
        'systemLocale' => 'C.UTF-8',
        'systemMaintainers' => [
            1,
        ],
    ],
];
