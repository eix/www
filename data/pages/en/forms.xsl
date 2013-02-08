<?xml version="1.0" encoding="utf-8" standalone="no" ?>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml"
>

	<!--
		These are templates that are used in pages with forms.
	-->

	<!--
		Renders a field in a form.
	-->
	<xsl:template name="field">
		<xsl:param name="type" />
		<xsl:param name="id" />
		<xsl:param name="label" />
		<xsl:param name="value" />
		<xsl:param name="size" />
		<xsl:param name="suffix" />

		<div>
			<xsl:attribute name="class">
				<xsl:text>field </xsl:text>
				<xsl:value-of select="$id" />
				<xsl:if test="/response/status/error/validation/*[local-name() = $id]">
					<xsl:text> invalid</xsl:text>
				</xsl:if>
			</xsl:attribute>

			<label for="{$id}">
				<xsl:value-of select="$label" />
			</label>

			<xsl:choose>

				<xsl:when test="$type = 'text'">
					<input name="{$id}" value="{$value}" size="{$size}" />
				</xsl:when>

				<xsl:when test="$type = 'password'">
					<input type="password" name="{$id}" value="{$value}" size="{$size}" />
				</xsl:when>

				<xsl:when test="$type = 'checkbox'">
					<input name="{$id}" type="checkbox">
						<xsl:if test="$value = 1">
							<xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:if>
					</input>
				</xsl:when>

				<xsl:when test="$type = 'textArea'">
					<textarea name="{$id}">
						<xsl:value-of select="$value" />
					</textarea>
				</xsl:when>

				<xsl:when test="$type = 'image'">
					<input name="{$id}" type="file" />
					<!-- The 'value' variable is used here as the image URL. -->
					<xsl:if test="$value">
						<br />
						<img class="product" src="{$value}" />
					</xsl:if>
				</xsl:when>

			</xsl:choose>

			<!--
				Allows adding stuff after the field, e.g. a checkbox associated
				with that field.
			-->
			<xsl:copy-of select="$suffix" />

			<!--
				Add a notice beneath the field that indicates what did not
				validate.
			-->
			<xsl:if test="/response/status/error/validation/*[local-name() = $id]">
				<br />
				<ul class="validation">
					<xsl:for-each select="/response/status/error/validation/*[local-name() = $id]/item">
						<li><xsl:value-of select="." /></li>
					</xsl:for-each>
				</ul>
			</xsl:if>
		</div>
	</xsl:template>


</xsl:stylesheet>