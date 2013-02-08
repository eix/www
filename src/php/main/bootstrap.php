<?php

// Make Eix available.
require __DIR__ . '/../lib/eix.phar';

// Let Eix find classes in the application class path.
\Nohex\Eix\Core\ClassLoader::addClassPath(__DIR__);