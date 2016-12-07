<body>
<!--debut du conteneur GLOBAL-->
	<div id ="global">
		<!--Debut Section ENTÊTE-->
		<header class ="entete">
			<a href="index.php">
				<img id="logo" src="images/logo.png" alt="logo" >
			</a>
			<div id="SessionUsager">
			<span id="Salutation"><h3>bienvenu <?php echo $_SESSION["authentifie"];?></h3></span>
			<a href="#">Terminer la session <?php //if(isset($_SESSION["authentifie"])){ session_destroy();}?></a>
			</div>
			<div class="menu">
				<nav id="menuPrincipal">
					<ul>
						<li class="itemMenu"><a href="index.php?Admins&action=listeOeuvres">Oeuvres</a></li>
						<li class="itemMenu"><a href="index.php?Admins&action=listeArtistes">Artsites</a></li>
						<li class="itemMenu"><a href="index.php?Admins&action=">Menu_3</a></li>
						<li class="itemMenu"><a href="index.php?Admins&action=">Menu_4</a></li>
						<li class="itemMenu"><a href="index.php?Admins&action=">Menu_5</a></li>
						<li class="itemMenu"><a href="index.php?Admins&action=apropos">À Propos</a></li>
					</ul>
				</nav>
				<nav id="reseauxSociaux">
					<ul>
						<li class="icones" id="reseauFacebook">
							<a href="https://www.facebook.com/">
								<i class="fa fa-facebook-square" aria-hidden="true"></i>
							</a>
						</li>
						<li class="icones" id="reseauTwitter">
							<a href="https://www.twitter.com/">
								<i class="fa fa-twitter-square" aria-hidden="true"></i>
							</a>
						</li>
						<li class="icones" id="reseauInstragram">
							<a href="https://www.instagram.com/">
								<i class="fa fa-instagram" aria-hidden="true"></i>
							</a>
						</li>
					</ul>
				</nav>			
			</div>
		</header>
		<!--fin Section ENTÊTE-->