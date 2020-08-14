<?php

// Include the Platform.sh-specific configuration.
// This file will no-op on its own if not on Platform.sh.
$platformshFile = __DIR__ . '/PlatformshConfiguration.php';
if (file_exists($platformshFile)) {
    require_once($platformshFile);
}
