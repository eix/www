<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml"
>

	<xsl:import href="../frame.xsl" />

	<xsl:template name="body">
		<p>
			Eix is a light-weight framework aimed at building robust web
			applications without having to undergo a steep learning curve.
		</p>

		<h2>Requirements</h2>
		<p>
			Eix requires <a href="http://www.php.net/">PHP</a> 5.3, and it will
			also work on 5.4. Additional modules may be required if database or
			network connectivity are expected.
		</p>

		<h2>Components</h2>
		<p>
			Eix is auto-contained. You will find a quick and flexible routing
			engine, a powerful XSL-based templating system, a fast and effective
			ORM-like persistence layer for your object hierarchy, a deceptively
			simple request/response structure... everything you may need to
			quickly build a web application to suit your needs.
		</p>

		<h2>Extensibility</h2>
		<p>
			In case the built-in functionality is not enough, the templating
			system and the data access are easily extensible and completely
			customisable. It should be a breeze extending Eix to support your
			preferred templating engine, or your database of choice.
		</p>


		<p class="bottom_note">
			If you are not yet convinced, hesitate no more: download Eix and
			take it for a ride!
		</p>
	</xsl:template>
</xsl:stylesheet>