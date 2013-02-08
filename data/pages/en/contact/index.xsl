<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml"
>

	<xsl:import href="../frame.xsl" />

	<xsl:template name="styles">
		<link rel="stylesheet" href="/static/styles/contact.css" type="text/css" />
		<link rel="stylesheet" href="/static/styles/actions.css" type="text/css" />
		<link rel="stylesheet" href="/static/styles/forms.css" type="text/css" />
	</xsl:template>

	<xsl:template name="body">
		<xsl:choose>
			<xsl:when test="/response/errors/source = 'server'">
				<p class="warning">
					Apologies, the message could not be sent: <br />
					<xsl:value-of select="/response/errors/messages" />
				</p>
			</xsl:when>
			<xsl:when test="/response/errors/source = 'validation'">
				<div class="warning">
					<p>
						Apologies, the message could not be sent.
					</p>
					<ul>
						<xsl:for-each select="/response/errors/messages/*">
							<li>
								<xsl:value-of select="." />
							</li>
						</xsl:for-each>
					</ul>
				</div>
			</xsl:when>
			<xsl:otherwise>
				<p>
					If there is something you need to know about Eix, and you
					did not find it in this website, you can reach us at
					<code>eix@nohex.com</code>.
				</p>
				<p>
					You can also get in contact with us using this form.
				</p>
				<p>
					If you are expecting a response, please remember to include
					any means of contact, such as an e-mail address.
				</p>
			</xsl:otherwise>
		</xsl:choose>

		<form id="contact" method="post" action="/contacte">
			<fieldset>
				<legend>Message</legend>
				<p class="field required">
					<label>Your name<span class="label-separator">: </span></label>
					<span>
						<input type="text" id="name" name="name" size="40"
							value="{/response/contact/name}"
						/>
					</span>
				</p>
				<p class="field required">
					<label>Your e-mail address<span class="label-separator">: </span></label>
					<span>
						<input type="text" id="email" name="email" size="40"
							value="{/response/contact/email}"
						/>
					</span>
				</p>
				<p class="field required">
					<label>Your message<span class="label-separator">: </span></label>
					<span>
						<textarea id="message" name="message" cols="35" rows="5">
							<xsl:value-of select="/response/contact/message" />
						</textarea>
					</span>
				</p>
			</fieldset>
			<fieldset class="actions">
				<legend>Actions</legend>
				<input id="required" name="required" type="hidden" value="message" />
				<button type="submit">Send</button>
			</fieldset>
		</form>
	</xsl:template>
</xsl:stylesheet>