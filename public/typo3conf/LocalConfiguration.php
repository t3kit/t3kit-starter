<?php
return [
    'BE' => [
        'debug' => true,
        'explicitADmode' => 'explicitAllow',
        'installToolPassword' => '$argon2i$v=19$m=65536,t=16,p=1$elFQZWtCMFRGcnp5ZGpMMA$Yl2NcTkCJkVtfyhFuOce7sMwBdnnuZ+zZq1GN6CTf1w',
        'loginSecurityLevel' => 'normal',
        'passwordHashing' => [
            'className' => 'TYPO3\\CMS\\Core\\Crypto\\PasswordHashing\\Argon2idPasswordHash',
            'options' => [],
        ],
    ],
    'DB' => [
        'Connections' => [
            'Default' => [
                'charset' => 'utf8mb4',
                'driver' => 'mysqli',
                'tableoptions' => [
                    'charset' => 'utf8mb4',
                    'collate' => 'utf8mb4_unicode_ci',
                ],
            ],
        ],
    ],
    'EXTENSIONS' => [
        'backend' => [
            'backendFavicon' => 'EXT:t3kit/Resources/Public/Images/Backend/be-favicon.ico',
            'backendLogo' => '',
            'loginBackgroundImage' => '',
            'loginFootnote' => 't3kit 10',
            'loginHighlightColor' => '#010101',
            'loginLogo' => 'EXT:t3kit/Resources/Public/Images/Backend/login-logo.svg',
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
        ],
    ],
    'FE' => [
        'debug' => true,
        'loginSecurityLevel' => 'normal',
        'passwordHashing' => [
            'className' => 'TYPO3\\CMS\\Core\\Crypto\\PasswordHashing\\Argon2idPasswordHash',
            'options' => [],
        ],
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
        'processor_stripColorProfileCommand' => '+profile \'*\'',
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
                        'compression' => 1,
                    ],
                ],
                'pages' => [
                    'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
                    'options' => [
                        'compression' => 1,
                    ],
                ],
                'pagesection' => [
                    'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
                    'options' => [
                        'compression' => 1,
                    ],
                ],
                'rootline' => [
                    'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
                    'options' => [
                        'compression' => 1,
                    ],
                ],
            ],
        ],
        'devIPmask' => '*',
        'displayErrors' => 1,
        'encryptionKey' => 'c2559bd9c61ccf05059bdef05807275b79e6c36bee2563265062138ff4a4e110965d8ff21971cd621f97c4429cec2221',
        'exceptionalErrors' => 12290,
        'features' => [
            'felogin.extbase' => true,
            'fluidBasedPageModule' => true,
            'form.legacyUploadMimeTypes' => false,
            'rearrangedRedirectMiddlewares' => true,
            'redirects.hitCount' => false,
            'security.backend.enforceReferrer' => true,
            'security.frontend.keepSessionDataOnLogout' => false,
            'unifiedPageTranslationHandling' => true,
        ],
        'sitename' => 'TYPO3 :: t3kit10 :: Dev mode *(local)',
        'systemMaintainers' => [
            1,
        ],
    ],
];
