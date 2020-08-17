<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml"
	xmlns:sfs="http://schema.slothsoft.net/farah/sitemap" xmlns:html="http://www.w3.org/1999/xhtml"
	xmlns:svg="http://www.w3.org/2000/svg" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:variable name="company" select="/*/*[@name='company']/game" />
	<xsl:variable name="game" select="/*/*[@name='game']/game" />

	<xsl:template match="/*">
		<xsl:variable name="requestedPage" select="*[@name='sites']//*[@current]" />
		<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
		<html>
			<head>
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1" />

				<title>
					<xsl:value-of select="$game/title" />
					-
					<xsl:value-of select="$company/title" />
				</title>
			</head>

			<body>
				<div class="uk-container uk-container-center">
					<div class="uk-grid">
						<div id="navigation" class="uk-width-medium-1-4">
							<h1 class="nav-header">Oilcatz</h1>
							<a class="nav-header" href="oilcatz/" target="_self">press kit</a>
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
								<xsl:if test="$company/trailers/*">
									<li>
										<a href="#trailers">Videos</a>
									</li>
								</xsl:if>
								<xsl:if test="$company/images/*">
									<li>
										<a href="#images">Images</a>
									</li>
								</xsl:if>
								<li>
									<a href="#logo">Logo &amp; Icon</a>
								</li>
								<li>
									<a href="#quotes">Selected Articles</a>
								</li>
								<li>
									<a href="#links">Additional Links</a>
								</li>
								<li>
									<a href="#about">About Oilcatz</a>
								</li>
								<li>
									<a href="#credits">Team</a>
								</li>
								<li>
									<a href="#contact">Contact</a>
								</li>
							</ul>
						</div>
						<div id="content" class="uk-width-medium-3-4">
							<div class="uk-grid">
								<div class="uk-width-medium-2-6">
									<h2 id="factsheet">Factsheet</h2>
									<p>
										<strong>Developer:</strong>
										<br />
										<a href="oilcatz/">Oilcatz</a>
										<br />
										Based in Bayreuth, Germany
									</p>
									<p>
										<strong>Release date:</strong>
										<br />
										2021
									</p>

									<p>
										<strong>Platforms:</strong>
										<br />
									</p>
									<p>
										<strong>Website:</strong>
										<br />
										<a href="http://trialoftwo.slothsoft.net">http://trialoftwo.slothsoft.net</a>
									</p>
									<p>
										<strong>Regular Price:</strong>
										<br />
										-
									</p>
								</div>
								<div class="uk-width-medium-4-6">
									<h2 id="description">Description</h2>
									<p>
										Hello. This is a short compilation of facts about the game. Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
										exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
										in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
										proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
									</p>
									<h2 id="history">History</h2>
									Warning: count(): Parameter must be an array or an object that implements Countable in
									C:\Webserver\htdocs\vhosts\trialoftwo.slothsoft.net\public\presskit\sheet.php on line 439

									Call Stack:
									0.0000 405584 1. {main}() C:\Webserver\htdocs\vhosts\trialoftwo.slothsoft.net\public\presskit\sheet.php:0

									<p>
										Since we're an indie developer, we want a history to our game. This paragraph will explain this history in short.
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
										pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id
										est laborum.
									</p>
									Warning: count(): Parameter must be an array or an object that implements Countable in
									C:\Webserver\htdocs\vhosts\trialoftwo.slothsoft.net\public\presskit\sheet.php on line 456

									Call Stack:
									0.0000 405584 1. {main}() C:\Webserver\htdocs\vhosts\trialoftwo.slothsoft.net\public\presskit\sheet.php:0

									<h2>Features</h2>
									<ul>
										<li>Includes something really interesting about the game which players will love.</li>
										<li>This feature line is about the 8-bit pixels that are no doubt featuring in this game.</li>
										<li>Since it is unlikely that the audio isn't fucking amazing, say something about the audio, maybe?</li>
										<li>Make sure to stress that everything about this game is absolutely fabulous.</li>
										<li>Something to wrap up this 5-point feature list with a nice ring to it.</li>
									</ul>
								</div>
							</div>

							<hr />

							<h2 id="trailers">Videos</h2>
							<p>
								There are currently no trailers available for Trial of Two: The Dojo. Check back later for more or
								<a href="#contact">contact us</a>
								for specific requests!
							</p>
							<hr />

							<h2 id="images">Images</h2>
							<div class="uk-grid images"></div>
							<p class="images-text">
								There are currently no screenshots available for Trial of Two: The Dojo. Check back later for more or
								<a href="#contact">contact us</a>
								for specific requests!
							</p>
							<hr />

							<h2 id="logo">Logo &amp; Icon</h2>
							<div class="uk-grid images"></div>
							<p>
								There are currently no logos or icons available for Trial of Two: The Dojo. Check back later for more or
								<a href="#contact">contact us</a>
								for specific requests!
							</p>
							<hr />
							<hr />

							<h2>Selected Articles</h2>
							<ul>
								<li>
									"This is a rather insignificant quote by a highly important person."
									<br />
									<cite>
										- Person Name,
										<a href="http:">Website</a>
									</cite>
								</li>
								<li>
									"An extremely positive quote from a rather insignificant person. Also great."
									<br />
									<cite>
										- Some Guy,
										<a href="http:">This Page Is Visited By 12 Visitors A Month</a>
									</cite>
								</li>
								<li>
									"I pretend to love this game even though I do not actually understand it."
									<br />
									<cite>
										- Pretentious Bastard,
										<a href="http:">Artsy Page</a>
									</cite>
								</li>
								<li>
									"HOLY SHIT SO AMAZING"
									<br />
									<cite>
										- Caps Guy,
										<a href="http:">Angry Review</a>
									</cite>
								</li>
							</ul>
							<hr />
							<h2 id="preview">Request Press Copy</h2>
							<p>We are afraid this developer has not upgraded their presskit() to use distribute(). For security purposes,
								this form has been disabled.</p>
							<hr />
							<h2 id="links">Additional Links</h2>
							<hr />

							<h2 id="about">About Oilcatz</h2>
							<p>
								<strong>Boilerplate</strong>
								<br />

								We're games studio and we make games. We're also capable of editing XML files.

							</p>

							<p>
								<strong>More information</strong>
								<br />
								More information on Oilcatz, our logo &amp; relevant media are available
								<a href="oilcatz/">here</a>
								.
							</p>

							<hr />

							<div class="uk-grid">
								<div class="uk-width-medium-1-2">
									<h2 id="credits">Trial of Two: The Dojo Credits</h2>
									<p>
										<strong>Katharina Broswik</strong>
										<br />
										<a href="twitter.com/xPetrichora">art direction, level design</a>
									</p>
									<p>
										<strong>Robin Daraban</strong>
										<br />
										creative direction, programming, A.I. design
									</p>
									<p>
										<strong>Stephi Dietzel</strong>
										<br />
										<a href="twitter.com/StephDiy">art, character design</a>
									</p>
									<p>
										<strong>Paul Redetzky</strong>
										<br />
										<a href="paulrdi.de">music</a>
									</p>
									<p>
										<strong>Daniel Schulz</strong>
										<br />
										<a href="daniel-schulz.slothsoft.net">technical direction, game design</a>
									</p>
									<p>
										<strong>Lena Voß</strong>
										<br />
										<a href="twitter.com/wenigworte">management</a>
									</p>
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