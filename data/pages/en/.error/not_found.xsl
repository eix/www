<?xml version="1.0" encoding="utf-8" standalone="no" ?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml"
>
	<xsl:import href="../frame.xsl" />

	<xsl:template name="body">
		<h2>Oops!</h2>

		<p id="error-message">
			The page you requested could not be found.
		</p>
		
		<p>
			Make sure the page's address is correct. If you got here following
			a link in this website, please <a href="/contacte">let us know</a>.
		</p>

		<p>
			Perhaps Google can help you find what you're looking for:
			<form action="http://www.google.com/" id="cse-search-box">
				<div>
					<input type="hidden" name="cx" value="partner-pub-1963232397103464:1qj7xtdcpyn" />
					<input type="hidden" name="cof" value="FORID:11" />
					<input type="hidden" name="ie" value="UTF-8" />
					<input type="text" name="q" size="31" />
					<input type="submit" name="sa" value="Search" />
				</div>
			</form>
			<script type="text/javascript" src="http://www.google.com/cse/brand?form=cse-search-box

				."></script>
		</p>
	</xsl:template>
</xsl:stylesheet>