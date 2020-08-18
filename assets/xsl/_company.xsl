<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml"
	xmlns:sfs="http://schema.slothsoft.net/farah/sitemap" xmlns:html="http://www.w3.org/1999/xhtml"
	xmlns:svg="http://www.w3.org/2000/svg" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:variable name="company" select="/*/*[@name='company']/game" />
	<xsl:variable name="game" select="/*/*[@name='game']/game" />
	<xsl:variable name="images" select="/*/*[@name='images']/*/*" />

	<xsl:variable name="trailers" select="$company/trailers/*" />
	<xsl:variable name="awards" select="$company/awards/*" />
	<xsl:variable name="quotes" select="$company/quotes/*" />
	<xsl:variable name="additionals" select="$company/additionals/*" />
	<xsl:variable name="credits" select="$company/credits/*" />
	<xsl:variable name="contacts" select="$company/contacts/*" />
	<xsl:variable name="socials" select="$company/socials/*" />

	<xsl:template match="/*">
		<xsl:variable name="requestedPage" select="*[@name='sites']//*[@current]" />
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<html>
			<head>
				<title>
					<xsl:value-of select="$company/title" />
				</title>

				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1" />

				<link rel="icon" type="image/png" href="/oilcatz@trialoftwo.slothsoft.net/static/favicon" />
			</head>
			<body>
				<div class="uk-container uk-container-center">
					<div class="uk-grid">
						<div id="navigation" class="uk-width-medium-1-4">
							<h1 class="nav-header">
								<xsl:value-of select="$company/title" />
							</h1>
							<a class="nav-header" href="{$company/website}">
								<xsl:value-of select="$company/website" />
							</a>
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
									<a href="#projects">Projects</a>
								</li>
								<xsl:if test="$trailers">
									<li>
										<a href="#trailers">Videos</a>
									</li>
								</xsl:if>
								<xsl:if test="$images">
									<li>
										<a href="#images">Images</a>
									</li>
								</xsl:if>
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
							<img src="/oilcatz@trialoftwo.slothsoft.net/static/header" class="header" />
							<div class="uk-grid">
								<div class="uk-width-medium-2-6">
									<h2 id="factsheet">Factsheet</h2>
									<p>
										<strong>Developer:</strong>
										<br />
										<a href="{$company/website}">
											<xsl:value-of select="$company/title" />
										</a>
										<br />
										Based in
										<xsl:value-of select="$company/based-in" />
									</p>
									<p>
										<strong>Founding date:</strong>
										<br />
										<xsl:value-of select="$company/founding-date" />
									</p>
									<p>
										<strong>Website:</strong>
										<br />
										<a href="http://http://trialoftwo.slothsoft.net">http://trialoftwo.slothsoft.net</a>
									</p>
									<p>
										<strong>Press / Business contact:</strong>
										<br />
										<a href="mailto:info.slothsoft@gmail.com">info.slothsoft@gmail.com</a>
									</p>
									<xsl:if test="$socials">
										<p>
											<strong>Social:</strong>
											<br />
											<xsl:for-each select="$socials">
												<a href="{link}">
													<xsl:value-of select="name" />
												</a>
												<br />
											</xsl:for-each>
										</p>
									</xsl:if>
									<xsl:if test="$game">
										<p>
											<strong>Releases:</strong>
											<br />
											<xsl:for-each select="$game">
												<a href="{website}">
													<xsl:value-of select="title" />
												</a>
												<br />
											</xsl:for-each>
										</p>
									</xsl:if>
									<p>
										<strong>Address:</strong>
										<br />
										Bussardweg 23
										<br />
										95445 Bayreuth
										<br />
										Germany
										<br />
									</p>
									<p>
										<strong>Phone:</strong>
										<br />
										+49 15 784 518 211
									</p>
								</div>
								<div class="uk-width-medium-4-6">
									<h2 id="description">Description</h2>
									<p>
										We're games studio and we make games. We're also capable of editing XML files.
									</p>
									<h2 id="history">History</h2>
									<strong>Early history</strong>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel nisi dolor. Pellentesque vitae eros velit,
										quis venenatis orci. Phasellus elit urna, semper ut gravida et, porta non dui. Aliquam erat volutpat. Aenean
										porta volutpat imperdiet. Maecenas venenatis, tellus eget vehicula vulputate, augue erat elementum quam,
										tincidunt laoreet magna orci et mauris. Proin porttitor pharetra nisi, accumsan sollicitudin neque varius a.
										Aenean ut massa ipsum, id hendrerit lacus. Maecenas posuere egestas nunc at cursus. Etiam mollis libero vel
										eros pulvinar aliquam. Sed vitae turpis sed nibh venenatis dictum. Sed suscipit orci justo, at sagittis ante.
										Sed leo nisl, ultricies in fermentum id, aliquam id dolor. Ut laoreet, felis id posuere bibendum, arcu ipsum
										lacinia est, eu lobortis velit enim eget mi. In ullamcorper ullamcorper enim ut gravida. Vivamus rutrum lacus
										mollis risus malesuada iaculis.</p>
									<strong>After that</strong>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sem dui, volutpat eu adipiscing sed, rutrum
										aliquam lacus. Proin sollicitudin consequat dolor id dignissim. Aliquam sem turpis, sagittis lobortis viverra
										eget, varius vitae nunc. Proin ac lacus porttitor dui sollicitudin elementum. Nulla ut hendrerit est. Fusce
										vitae arcu erat, vel molestie est. Proin et placerat justo. Proin placerat arcu massa, eu blandit leo. Cum
										sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam eu lorem sed massa
										lobortis hendrerit vitae vel odio. Maecenas eget pulvinar tortor. Nunc vitae nisl ac odio bibendum luctus ac a
										leo. Suspendisse auctor elit et velit sagittis vehicula. Maecenas faucibus blandit rutrum. Duis et sem nibh.
										Vestibulum placerat elit et dui rhoncus accumsan.</p>
									<h2 id="projects">Projects</h2>
									<ul>
										<li>
											<a href="sheet.php?p=trialoftwo">Trialoftwo</a>
										</li>
									</ul>
								</div>
							</div>


							<xsl:if test="$trailers">
								<hr />

								<h2 id="trailers">Videos</h2>
								<p>
									There are currently no trailers available for Oilcatz. Check back later for more or
									<a href="#contact">contact us</a>
									for specific requests!
								</p>
							</xsl:if>

							<xsl:if test="$images">
								<hr />

								<h2 id="images">Images</h2>
								<div class="uk-grid images">
									<xsl:for-each select="$images">
										<div class="uk-width-medium-1-2">
											<a href="{@href}">
												<img src="{@href}" alt="{@name}" />
											</a>
										</div>
									</xsl:for-each>
								</div>
								<p class="images-text">
									There are far more images available for Oilcatz, but these are the ones we felt would be most useful to you. If
									you have specific requests, please do
									<a href="#contact">contact us</a>
									!
								</p>

							</xsl:if>

							<hr />

							<h2 id="logo">Logo &amp; Icon</h2>
							<div class="uk-grid images"></div>
							<p>
								There are currently no logos or icons available for Oilcatz. Check back later for more or
								<a href="#contact">contact us</a>
								for specific requests!
							</p>
							<hr />
							<h2 id="quotes">Selected Articles</h2>
							<ul>
								<li>
									"This is a rather insignificant quote by a highly important person."
									<br />
									<cite>
										- Person Name,
										<a href="http://www.website.com/">Website</a>
									</cite>
								</li>
								<li>
									"An extremely positive quote from a rather insignificant person. Also great."
									<br />
									<cite>
										- Some Guy,
										<a href="http://geocities.blog.com/">This Page Is Visited By 12 Visitors A Month</a>
									</cite>
								</li>
								<li>
									"I pretend to love this game even though I do not actually understand it."
									<br />
									<cite>
										- Pretentious Bastard,
										<a href="http://art.tumblr.com/">Artsy Page</a>
									</cite>
								</li>
								<li>
									"HOLY SHIT SO AMAZING"
									<br />
									<cite>
										- Caps Guy,
										<a href="http://thispage.net/angrytube/">Angry Review</a>
									</cite>
								</li>
							</ul>
							<hr />
							<h2 id="links">Additional Links</h2>
							<p>
								<strong>Company Link #1</strong>
								<br />
								This link is a link that might be useful. You can check it out at
								<a href="http://somemusicsite.com/thislink" alt="http://somemusicsite.com/thislink">http:</a>
								.
							</p>
							<hr />
							<div class="uk-grid">
								<div class="uk-width-medium-1-2">
									<h2 id="credits">Team &amp; Repeating Collaborator</h2>
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