<?php
/**
 * Sets up the Eix application's environment.
 *
 * @package nohex.eix
 */

// Make Eix available.
require 'eix-0.1.1.phar';
// Let PHP find the application's classes.
\Nohex\Eix\Core\ClassLoader::addClassPath(__DIR__);