<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns="http://schema.slothsoft.net/farah/sitemap"
	xmlns:sfd="http://schema.slothsoft.net/farah/dictionary" xmlns:sfm="http://schema.slothsoft.net/farah/module"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/*">
		<domain name="trialoftwo.slothsoft.net" vendor="oilcatz" module="trialoftwo.slothsoft.net" ref="pages/game"
			status-active="" status-public="" sfd:languages="en-us">
			<page name="Oilcatz" ref="pages/company" status-active="" status-public="" />
			<file name="favicon.ico" ref="/static/favicon" status-active="" />
			<file name="header" ref="/static/header" status-active="" />
			<file name="logo" ref="/static/logo" status-active="" />
			<file name="logo-text" ref="/static/logo-text" status-active="" />
			<file name="tournament-background" ref="/static/tournament-background" status-active="" />
			<page name="downloads" redirect=".." status-active="">
				<xsl:for-each select="*[@name = 'downloads']//sfm:manifest-info">
					<file name="{@name}" ref="{@url}" status-active="" />
				</xsl:for-each>
			</page>
			<page name="Tournament" redirect=".." status-active="">
				<xsl:for-each select="*[@name = 'tournaments']//sfm:manifest-info">
					<page name="{@name}" ref="pages/tournament?id={@name}" status-active=""  status-public=""/>
				</xsl:for-each>
			</page>
			<page name="sitemap" ref="//slothsoft@farah/sitemap-generator" status-active="" />
		</domain>
	</xsl:template>
</xsl:stylesheet>
				