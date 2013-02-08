<?xml version="1.0" encoding="utf-8" standalone="no" ?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml"
>
	<xsl:import href="../frame.xsl" />

	<xsl:template name="body">
		<h2>Ouch!</h2>

		<p id="error-message">
			There's been an unforeseen circumstance.
		</p>
		<p>
			Please retry whatever took you here in a while. If the error
			persists, please <a href="/contacte">let somebody now</a>.
		</p>

	</xsl:template>
</xsl:stylesheet>