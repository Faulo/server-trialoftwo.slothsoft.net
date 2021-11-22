<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml"
	xmlns:sfs="http://schema.slothsoft.net/farah/sitemap" xmlns:html="http://www.w3.org/1999/xhtml"
	xmlns:svg="http://www.w3.org/2000/svg" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:date="http://exslt.org/dates-and-times" xmlns:php="http://php.net/xsl" extension-element-prefixes="php date">

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
		<xsl:variable name="tournament"
			select="document(*[@name='tournaments']/*/*[@name=$requestedPage/@name]/@url)/*" />
		<xsl:variable name="date" select="php:function('strtotime', string($tournament/date))" />
		<xsl:variable name="date-string" select="php:function('date', 'd.m.Y', $date)" />
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<html class="tournament">
			<head>
				<title>
					Trial of Two Turnier -
					<xsl:value-of select="$date-string" />
				</title>

				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1" />


				<link rel="icon" type="image/png" href="/favicon.ico/" />

				<script type="application/javascript"><![CDATA[
function handleResize(eve) {
	var iframes = document.querySelectorAll("iframe");
	for(var i = 0; i < iframes.length; i++) {
		iframes[i].width = Math.min(600, document.documentElement.clientWidth);
	}
}
window.addEventListener("resize", handleResize, false);
window.addEventListener("load", handleResize, false);
				]]></script>
			</head>

			<body>
				<header>
					<img class="header" src="/header" alt="Trial of Two" />
				</header>
				<main>
					<hgroup>
						<h1 class="fvriosa">
							<xsl:value-of select="$tournament/name" />
						</h1>
						<h3 class="smudge"><xsl:value-of select="$tournament/event" /></h3>
						<h2 class="fvriosa">
							<time datetime="{php:function('date', 'Y-m-d\TH:i:sP', $date)}">
								<xsl:value-of select="$date-string" />
							</time>
							<br />
							<xsl:value-of select="$tournament/time" />
						</h2>
					</hgroup>
					<ul class="infos">
						<li>
							<h2 class="fvriosa">Location</h2>
							<iframe src="{$tournament/googlemap}" width="600" height="350" frameborder="0" scrolling="no" />
						</li>
						<li>
							<h2 class="fvriosa">Format</h2>
							<xsl:copy-of select="$tournament/format/node()" />
						</li>
						<li>
							<h2 class="fvriosa">Spiel</h2>
							<iframe src="https://store.steampowered.com/widget/1736050/" frameborder="0" width="600" height="200" />
						</li>
						<li>
							<h2 class="fvriosa">Anmeldung</h2>
							<xsl:copy-of select="$tournament/registration/node()" />
						</li>
						<xsl:if test="$tournament/prizes">
							<li>
								<h2 class="fvriosa">Preise</h2>
								<xsl:copy-of select="$tournament/prizes/node()" />
							</li>
						</xsl:if>
					</ul>
				</main>
				<footer>
					<a href="/">
						<img src="/logo-text" alt="Oilcatz"/>
					</a>
				</footer>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>