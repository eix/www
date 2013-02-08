<?php

namespace Nohex\Eix;

use Nohex\Eix\SampleApplication;
use Nohex\Eix\Core\Settings;

class SampleApplicationTest extends \PHPUnit_Framework_TestCase {

	private $application;

	public function setUp() {
		$this->application = new SampleApplication(
			new Settings('test/resources/')
		);
	}

	public function tearDown() {
		$this->application = NULL;
	}

	public function testAppCreation() {
		$this->assertTrue($this->application instanceof SampleApplication);
	}
}

?>