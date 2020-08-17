<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml"
	xmlns:sfs="http://schema.slothsoft.net/farah/sitemap" xmlns:html="http://www.w3.org/1999/xhtml"
	xmlns:svg="http://www.w3.org/2000/svg" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:variable name="company" select="/*/*[@name='company']/game" />
	<xsl:variable name="game" select="/*/*[@name='game']/game" />
	<xsl:variable name="images" select="/*/*[@name='images']/*/*" />
	
	<xsl:variable name="trailers" select="$game/trailers/*" />
	<xsl:variable name="awards" select="$game/awards/*" />
	<xsl:variable name="quotes" select="$game/quotes/*" />
	<xsl:variable name="additionals" select="$game/additionals/*" />
	<xsl:variable name="credits" select="$game/credits/*" />
	<xsl:variable name="contacts" select="$game/contacts/*" />
	<xsl:variable name="socials" select="$game/socials/*" />
	
	<xsl:variable name="platforms" select="$game/platforms/*" />
	<xsl:variable name="prices" select="$game/prices/*" />

	<xsl:template match="/*">
		<xsl:variable name="requestedPage" select="*[@name='sites']//*[@current]" />
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<html>
			<head>
				<title>
					<xsl:value-of select="$game/title" />
					-
					<xsl:value-of select="$company/title" />
				</title>
				
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1" />


				<link rel="icon" type="image/png" href="/favicon.ico/" />
			</head>

			<body>
				<div class="uk-container uk-container-center">
					<div class="uk-grid">
						<div id="navigation" class="uk-width-medium-1-4">
							<h1 class="nav-header"><xsl:value-of select="$company/title"/></h1>
							<ul class="uk-nav uk-nav-side">
								<li>
									<a href="#factsheet">Factsheet</a>
								</li>
								<li>
									<a href="#description">Description</a>
								</li>
								<li>
									<a href="#history">History</a>
								</li>
								<li>
									<a href="#features">Features</a>
								</li>
								<li>
									<a href="#trailers">Videos</a>
								</li>
								<li>
									<a href="#images">Images</a>
								</li>
								<li>
									<a href="#logo">Logo &amp; Icon</a>
								</li>
								<xsl:if test="$awards">
									<li>
										<a href="#awards">Awards &amp; Recognition</a>
									</li>
								</xsl:if>
								<xsl:if test="$quotes">
									<li>
										<a href="#quotes">Selected Articles</a>
									</li>
								</xsl:if>
								<xsl:if test="$additionals">
									<li>
										<a href="#links">Additional Links</a>
									</li>
								</xsl:if>
								<li>
									<a href="#about">About <xsl:value-of select="$company/title"/></a>
								</li>
								<xsl:if test="$credits">
									<li>
										<a href="#credits">Team</a>
									</li>
								</xsl:if>
								<xsl:if test="$contacts">
									<li>
										<a href="#contact">Contact</a>
									</li>
								</xsl:if>
							</ul>
						</div>
						<div id="content" class="uk-width-medium-3-4">
							<img src="/header/" class="header" />
							<div class="uk-grid">
								<div class="uk-width-medium-2-6">
									<h2 id="factsheet">Factsheet</h2>
									<p>
										<strong>Game:</strong>
										<br/>
										<xsl:value-of select="$game/title"/>
									</p>
									<p>
										<strong>Developer:</strong>
										<br />
										<a href="{$company/website}"><xsl:value-of select="$company/title"/></a>
										<br />
										Based in <xsl:value-of select="$company/based-in"/>
									</p>
									<p>
										<strong>Release date:</strong>
										<br />
										<xsl:value-of select="$game/release-date"/>
									</p>
									<xsl:if test="$platforms">
										<p>
											<strong>Platforms:</strong>
											<br />
											<xsl:for-each select="$platforms">
												<a href="{link}"><xsl:value-of select="name"/></a><br/>
											</xsl:for-each>
										</p>
									</xsl:if>
									<p>
										<strong>Website:</strong>
										<br />
										<a href="{$game/website}"><xsl:value-of select="$game/website"/></a>
									</p>
									<xsl:if test="$prices">
										<p>
											<strong>Regular Price:</strong>
											<br />
											<xsl:for-each select="$prices">
												<a href="{link}"><xsl:value-of select="name"/></a><br/>
											</xsl:for-each>
										</p>
									</xsl:if>
								</div>
								<div class="uk-width-medium-4-6">
									<h2 id="description">Description</h2>
									<xsl:for-each select="$game/description">
										<p>
											<xsl:value-of select="."/>
										</p>
									</xsl:for-each>

									<h2 id="history">History</h2>
									<xsl:for-each select="$game/history">
										<p>
											<xsl:value-of select="."/>
										</p>
									</xsl:for-each>
									
									<h2 id="features">Features</h2>
									<ul>
										<xsl:for-each select="$game/features/*">
										<li><xsl:value-of select="."/></li>
										</xsl:for-each>
									</ul>
								</div>
							</div>

							<hr />
							
							<h2 id="trailers">Videos</h2>
							
							<xsl:choose>
								<xsl:when test="$trailers">
									<div class="uk-grid trailers"></div>
								</xsl:when>
								<xsl:otherwise>
									<p class="trailers-text">
									There are currently no trailers available for <xsl:value-of select="$game/title"/>. Check back later for more or
									<a href="#contact">contact us</a>
									for specific requests!
								</p>
								</xsl:otherwise>
							</xsl:choose>
							
							<hr />

							<h2 id="images">Images</h2>
							<xsl:choose>
								<xsl:when test="$images">
									<div class="uk-grid images">
									<xsl:for-each select="$images">
										<div class="uk-width-medium-1-2">
											<a href="{@href}">
												<img src="{@href}" alt="{@name}" />
											</a>
										</div>
									</xsl:for-each></div>
								</xsl:when>
								<xsl:otherwise>
									<p class="images-text">
									There are currently no screenshots available for <xsl:value-of select="$game/title"/>. Check back later for more or
									<a href="#contact">contact us</a>
									for specific requests!
								</p>
								</xsl:otherwise>
							</xsl:choose>
							<hr />

							<h2 id="logo">Logo &amp; Icon</h2>
							<div class="uk-grid images"></div>
							<p>
								There are currently no logos or icons available for <xsl:value-of select="$game/title"/>. Check back later for more or
								<a href="#contact">contact us</a>
								for specific requests!
							</p>
							<hr />
							
							<xsl:if test="$awards">
								<h2 id="awards">Awards &amp; Recognition</h2>
								<hr />
							</xsl:if>
							
							<xsl:if test="$quotes">
								<h2 id="quotes">Selected Articles</h2>
								<hr />
							</xsl:if>
							
							
							<xsl:if test="$additionals">
								<h2 id="links">Additional Links</h2>
								<xsl:for-each select="$additionals">
									<p>
										<strong><xsl:value-of select="title"/></strong>
										<br />
										<a href="{link}"><xsl:value-of select="description"/></a>
									</p>
								</xsl:for-each>
								<hr />
							</xsl:if>

							<h2 id="about">About Oilcatz</h2>
							<xsl:for-each select="$company/description">
								<p>
									<xsl:value-of select="."/>
								</p>
							</xsl:for-each>

							<hr />

							<div class="uk-grid">
								<div class="uk-width-medium-1-2">
									<h2 id="credits"><xsl:value-of select="$game/title"/> Credits</h2>
									<xsl:for-each select="$credits">
										<p>
											<strong><xsl:value-of select="person"/></strong>
											<br />
											<a href="{website}"><xsl:value-of select="role"/></a>
										</p>
									</xsl:for-each>
								</div>
								<div class="uk-width-medium-1-2">
									<h2 id="contact">Contact</h2>
								</div>
							</div>

							<hr />

							<p>
								<a href="http://dopresskit.com/">presskit()</a>
								by Rami Ismail (
								<a href="https://www.vlambeer.com/">Vlambeer</a>
								) - also thanks to
								<a href="sheet.php?p=credits">these fine folks</a>
							</p>
						</div>
					</div>
				</div>
				<!-- <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> 
					<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.imagesloaded/3.0.4/jquery.imagesloaded.js"></script> 
					<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/masonry/3.1.2/masonry.pkgd.min.js"></script> <script 
					type="text/javascript"> $( document ).ready(function() { var container = $('.images'); container.imagesLoaded( function() 
					{ container.masonry({ itemSelector: '.uk-width-medium-1-2', }); }); }); </script> -->

			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>