<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml"
>

	<xsl:import href="../frame.xsl" />

	<xsl:template name="styles">
		<link rel="stylesheet" href="/static/styles/contact.css" type="text/css" />
	</xsl:template>

	<xsl:template name="body">
		<h2>Contact</h2>
		<p>
			The message was sent.
		</p>
		
		<div class="message">
			<xsl:if test="/response/contact/name">
				<xsl:value-of select="/response/contact/name" />
			</xsl:if>
			<xsl:if test="/response/contact/e-mail">
				<xsl:if test="/response/contact/name"> (</xsl:if>
				<xsl:value-of select="/response/contact/e-mail" />
				<xsl:if test="/response/contact/name">)</xsl:if>
			</xsl:if>
			<xsl:if test="/response/contact/name or /response/contact/e-mail">: </xsl:if>
			<blockquote class="contact-message">
				<xsl:value-of select="/response/contact/message" />
			</blockquote>
		</div>
	</xsl:template>
</xsl:stylesheet>