<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">

	<!--
		This stylesheet provides common formatting functions.
	-->

	<xsl:template name="preserve-line-breaks">
		<xsl:param name="text" />
		<xsl:choose>
			<xsl:when test="contains($text, '&#xa;')">
				<p>
				<xsl:value-of select="substring-before($text, '&#xa;')"/>
				</p>
				<xsl:call-template name="preserve-line-breaks">
					<xsl:with-param name="text" select="substring-after($text,'&#xa;')"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$text"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>