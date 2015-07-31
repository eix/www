<?php

// Allow a custom location for the code once deployed.
define('APP_DIR', @$_ENV['APP_DIR'] ?: __DIR__ . '/../src/php/lib/');

// Set up the class autoloader.
require APP_DIR . '/autoload.php';

// Start the application.
(new \Eix\Sample\Application)->run();
