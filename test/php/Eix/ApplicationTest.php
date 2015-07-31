<?php

namespace Eix\Webapp;

use Eix\Sample\Application;
use Eix\Core\Settings;

class ApplicationTest extends \PHPUnit_Framework_TestCase
{
    private $application;

    public function setUp()
    {
        $this->application = new Application(
            new Settings('test/resources/')
        );
    }

    public function tearDown()
    {
        $this->application = NULL;
    }

    public function testAppCreation()
    {
        $this->assertTrue($this->application instanceof Application);
    }
}
