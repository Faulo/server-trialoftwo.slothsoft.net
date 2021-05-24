<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns="http://schema.slothsoft.net/farah/sitemap"
	xmlns:sfd="http://schema.slothsoft.net/farah/dictionary" xmlns:sfm="http://schema.slothsoft.net/farah/module"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/*">
		<domain name="trialoftwo.slothsoft.net" vendor="oilcatz" module="trialoftwo.slothsoft.net" ref="pages/game"
			status-active="" status-public="" sfd:languages="en-us">
			<page name="Oilcatz" ref="pages/company" status-active="" status-public="" />
			<page name="favicon.ico" ref="/static/favicon" status-active="" />
			<page name="header" ref="/static/header" status-active="" />
			<page name="downloads" redirect=".." status-active="" >
				<xsl:for-each select="*[@name = 'downloads']//sfm:manifest-info">
					<file name="{@name}" ref="{@url}" status-active="" />
				</xsl:for-each>
			</page>
			<page name="sitemap" ref="//slothsoft@farah/sitemap-generator" status-active="" />
		</domain>
	</xsl:template>
</xsl:stylesheet>
				