<?php

// Add the tests folder into the include path.
set_include_path(join(PATH_SEPARATOR, array(
	// Append the tests.
	dirname(__FILE__) . '/../../main',
	// Append the original include path.
	get_include_path()
)));

// The tests use Eix's class loader to find and load classes.
require 'Nohex/Eix/bootstrap.php';