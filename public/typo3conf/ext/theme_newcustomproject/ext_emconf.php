<?php

$EM_CONF[$_EXTKEY] = [
    'title' => 'theme_newcustomproject',
    'description' => 'newcustomproject project. Based on t3kit10',
    'version' => '10.0.0',
    'category' => 'templates',
    'constraints' => [
        'depends' => [
            'typo3' => '10.4.0-10.4.99',
            'php' => '7.4.0-7.4.99',
            't3kit' => '10.0.0-10.0.99'
        ],
        'conflicts' => [
            'css_styled_content' => '*',
            'fluid_styled_content' => '*',
        ],
    ],
    'state' => 'alpha',
    'uploadfolder' => 0,
    'createDirs' => '',
    'clearCacheOnLoad' => 1,
    'author' => '',
    'author_email' => '',
    'author_company' => '',
    'autoload' => [
        'psr-4' => [
            'T3k\\newcustomproject\\' => 'Classes'
        ],
    ],
];
