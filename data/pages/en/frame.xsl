<?xml version="1.0" encoding="utf-8" standalone="no" ?>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml"
>

	<xsl:output
		method="html"
		omit-xml-declaration="yes"
		encoding="UTF-8"
		indent="yes"
	/>

	<xsl:template match="/">
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html></xsl:text>
		<html lang="{/response/application/locale/id}">
			<head>
				<title>
					<xsl:value-of select="/response/page/title" />
				</title>
				<meta http-equiv="content-type" content="{/response/page/contentType}" />
				<meta name="keywords" content="php, framework, development, programming, web, www" />
				<meta name="description" content="Eix is an open source PHP framework used to build web applications." />
				<meta name="author" content="http://www.nohex.com/" />

				<link rel="stylesheet" href="/static/styles/layout.css" type="text/css" />
				<xsl:call-template name="styles" />

				<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
				<script type="text/javascript" src="/static/scripts/start.js"></script>
				<xsl:call-template name="scripts" />
				<script type="text/javascript" src="/static/scripts/ga.js"></script>
			</head>

			<body>
				<xsl:if test="/response/page/template">
					<xsl:attribute name="class">
						<xsl:text>template-</xsl:text>
						<xsl:value-of select="/response/page/template" />
					</xsl:attribute>
				</xsl:if>
				<div id="workspace">
					<header>
						<div id="header">
							<div id="logo">
								<a href="/"><h1>Eix</h1></a>
							</div>

							<hr />

							<nav>
								<ul id="navbar" class="top nav">
									<xsl:call-template name="nav" />
								</ul>
							</nav>

						</div>
					</header>

					<hr />

					<div id="container">
						<div id="content">
							<xsl:call-template name="titles" />

							<xsl:apply-templates select="/response/status" />

							<xsl:call-template name="body" />
						</div>

						<br class="end_floats" />

						<div id="footer_push"></div>
					</div>

					<hr />

				</div>

				<footer>
					<div id="footer">
						<div class="nav">
							<nav>
								<ul class="nav bottom">
									<xsl:call-template name="nav" />
								</ul>
							</nav>
						</div>
						<div class="copyright">
							<span>&#169;</span> Nohex 2013
						</div>
					</div>
				</footer>
			</body>
		</html>
	</xsl:template>

	<xsl:template name="styles">
		<!--
			Placeholder. This allows for additional styles to be declared for
			each page.
		-->
	</xsl:template>

	<xsl:template name="scripts">
		<!--
			Placeholder. This allows for additional scripts to be called for
			each page.
		-->
	</xsl:template>

	<xsl:template name="titles">
		<!--
			Placeholder. This section is rendered at the top of the body
			template.
		-->
	</xsl:template>

	<xsl:template match="/response/status">
		<!-- Warn about validation errors -->
		<xsl:if test="error/validation">
			<p class="error">
				Please, check the data you've just provided.
			</p>
			<xsl:for-each select="error/validation/item">
				<p class="{$type}">
					<xsl:value-of select="." />
				</p>
			</xsl:for-each>
		</xsl:if>
		<!-- Display all other status messages -->
		<xsl:for-each select="*">
			<xsl:variable name="type" select="local-name()" />
			<xsl:for-each select="item">
				<p class="{$type}">
					<xsl:value-of select="." />
				</p>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>

	<xsl:template name="nav">
		<li class="about"><a href="/about"><span>What</span></a></li>
		<li class="documentation"><a href="/get"><span>Where</span></a></li>
		<li class="documentation"><a href="/docs"><span>How</span></a></li>
		<li class="contact"><a href="/contact"><span>Who</span></a></li>
	</xsl:template>

	<xsl:template name="body">
		<!--
			Placeholder. The real 'body' template is defined in each of the
			XSL pages which import frame.xsl.
		-->
	</xsl:template>

</xsl:stylesheet>