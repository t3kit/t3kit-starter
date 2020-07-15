<?php
return [
    'BE' => [
        'debug' => true,
        'explicitADmode' => 'explicitAllow',
        'installToolPassword' => '$argon2i$v=19$m=65536,t=16,p=2$VUl2ODRHZ0pleWZLZTlMNg$FfXh0HKjUGLBnqMq7cgRBKtNHAd3G4SJIv3zLWFcA6s',
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
    'MAIL' => [
        'transport' => 'sendmail',
        'transport_sendmail_command' => '/usr/sbin/sendmail -t -i ',
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
        'encryptionKey' => '64eb536b1991548715418cec7af4da774f9ec80718aa336a26f0011e89eb8c52f2919035c28199851af0b6f5c3fb40a1',
        'exceptionalErrors' => 12290,
        'features' => [
            'felogin.extbase' => true,
            'fluidBasedPageModule' => true,
            'form.legacyUploadMimeTypes' => false,
            'rearrangedRedirectMiddlewares' => true,
            'redirects.hitCount' => false,
            'security.backend.enforceReferrer' => true,
            'security.frontend.keepSessionDataOnLogout' => false,
        ],
        'sitename' => 'TYPO3 :: t3kit10 :: Dev mode *(local)',
        'systemLocale' => 'en_US.UTF-8',
        'systemMaintainers' => [
            1,
        ],
    ],
];
