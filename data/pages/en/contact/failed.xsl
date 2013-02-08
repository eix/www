<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml"
>

	<xsl:import href="../frame.xsl" />

	<xsl:template name="body">
		<p>
			Your message could not be sent.
		</p>
		
		<p>
			<xsl:choose>
				<xsl:when test="/viewdata/exception-data/class = 'EixMailMessageMalformedAddressException'">
					Recipient's address is not valid.
				</xsl:when>
				<xsl:when test="/viewdata/exception-data/class = 'EixSocketConnectionException'">
					Mail server is not responding.
					<xsl:value-of select="/viewdata/exception-data/class" />
				</xsl:when>
				<xsl:when test="/viewdata/exception-data/class = 'EixMailTransportException'">
					There is a connection problem with the mail server
					(<xsl:value-of select="/viewdata/exception-data/message" />).
				</xsl:when>
				<xsl:when test="/viewdata/exception-data/class = 'EixMailTransportBadSenderException'">
					Sender's address is not valid
					(<xsl:value-of select="/viewdata/exception-data/message" />).
				</xsl:when>
				<xsl:otherwise>
					Failure reason could not be determined (<xsl:value-of select="/viewdata/exception-data/class" />
					<xsl:if test="/viewdata/exception-data/message != ''">, <xsl:value-of select="/viewdata/exception-data/message" /></xsl:if>).
				</xsl:otherwise>
			</xsl:choose>
		</p>
			
		<ul class="actions">
			<li>
				<a href="javascript:history.back();" title="Go back to the contact form">Back</a>
			</li>
			<li>
				<a href="/home/" title="Go back home">Quit</a>
			</li>
		</ul>
	</xsl:template>
</xsl:stylesheet>