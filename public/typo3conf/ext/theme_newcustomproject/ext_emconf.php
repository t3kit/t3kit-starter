<?php

$EM_CONF[$_EXTKEY] = [
    'title' => 'theme_newcustomproject',
    'description' => 'newcustomproject project. Based on t3kit11',
    'version' => '11.0.0',
    'category' => 'templates',
    'constraints' => [
        'depends' => [
            'typo3' => '11.5.0-11.5.99',
            'php' => '7.4.0-8.0.99',
            't3kit' => '11.0.0-11.0.99'
        ],
        'conflicts' => [
            'css_styled_content' => '*',
            'fluid_styled_content' => '*',
        ],
    ],
    'state' => 'alpha',
    'uploadfolder' => 0,
    'createDirs' => '',
    'clearCacheOnLoad' => 1
];
