<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml"
	xmlns:sfs="http://schema.slothsoft.net/farah/sitemap" xmlns:html="http://www.w3.org/1999/xhtml"
	xmlns:svg="http://www.w3.org/2000/svg" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:variable name="company" select="/*/*[@name='company']/game" />
	<xsl:variable name="game" select="/*/*[@name='game']/game" />
	<xsl:variable name="images" select="/*/*[@name='images']/*/*" />
	<xsl:variable name="logos" select="/*/*[@name='logos']/*/*" />

	<xsl:variable name="trailers" select="$game/trailers/*" />
	<xsl:variable name="awards" select="$game/awards/*" />
	<xsl:variable name="quotes" select="$game/quotes/*" />
	<xsl:variable name="additionals" select="$game/additionals/*" />
	<xsl:variable name="credits" select="$game/credits/*" />

	<xsl:variable name="contacts" select="$company/contacts/*" />
	<xsl:variable name="socials" select="$company/socials/*" />

	<xsl:variable name="platforms" select="$game/platforms/*" />
	<xsl:variable name="prices" select="$game/prices/*" />
	<xsl:variable name="thanks" select="$game/thanks/*" />

	<xsl:template match="/*">
		<xsl:variable name="requestedPage" select="*[@name='sites']//*[@current]" />
		<xsl:variable name="tournament" select="document(*[@name='tournaments']/*/*[@name=$requestedPage/@name]/@url)/*" />
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<html>
			<head>
				<title>
					<xsl:value-of select="$tournament/date" />
					-
					<xsl:value-of select="$tournament/event" />
				</title>

				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1" />


				<link rel="icon" type="image/png" href="/favicon.ico/" />
			</head>

			<body class="tournament">
				<h1>Trial of Two Turnier</h1>
				<h2><xsl:value-of select="$tournament/date"/></h2>
				<h2><xsl:value-of select="$tournament/time"/></h2>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>