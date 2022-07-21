<?php

declare(strict_types=1);

defined('TYPO3') || die();

/*
 * ###########################
 * Register Icons
 * ===========================
 */
// $iconRegistry = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance(\TYPO3\CMS\Core\Imaging\IconRegistry::class);
// // Content Elements icons
// $contentElementIconFilePath = 'EXT:theme_newcustomproject/Resources/Public/Icons/ContentElements/';
// $contentElementIcons = [
//     'ce-custom'
// ];
// foreach ($contentElementIcons as $icon) {
//     $iconRegistry->registerIcon(
//         $icon,
//         \TYPO3\CMS\Core\Imaging\IconProvider\SvgIconProvider::class,
//         ['source' => $contentElementIconFilePath . $icon . '.svg']
//     );
// }

/*
 * ###########################
 * Register for hooks to show preview of tt_content elements in page module
 * ===========================
 */
$GLOBALS['TYPO3_CONF_VARS']['SC_OPTIONS']['cms/layout/class.tx_cms_layout.php']['tt_content_drawItem']['exampleContentElement'] =
\T3k\newcustomproject\Hooks\PageLayoutView\ExampleContentElementCEPreviewRenderer::class;


// Register RTE presets
if (empty($GLOBALS['TYPO3_CONF_VARS']['RTE']['Presets']['newcustomproject_default'])) {
    $GLOBALS['TYPO3_CONF_VARS']['RTE']['Presets']['newcustomproject_default'] = 'EXT:theme_newcustomproject/Configuration/RTE/Default.yaml';
}
