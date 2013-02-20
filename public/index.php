<?php

// Bring up the application's environment.
require __DIR__ . '/../src/php/main/bootstrap.php';

// Start the application.
$application = new \Nohex\Eix\SampleApplication;
$application->run();
