<body>
<!--debut du conteneur GLOBAL-->
	<div id ="global">
		<!--Debut Section ENTÊTE-->
		<header class ="entete">
			<a href="index.php">
				<img id="logo" src="images/logo.png" alt="logo" >
			</a>
			<div id="SessionUsager">
			<span id="Salutation"><h3>bienvenu <?php echo $data["authentifie"];?></h3></span>
			<a href="./index.php?Admins&action=finSession">Terminer la session</a>
			</div>
			<div class="menu">
				<nav id="menuPrincipal">
					<ul>
						<li class="itemMenu"><a href="index.php?Admins&action=listeOeuvres">Oeuvres</a></li>
						<li class="itemMenu"><a href="index.php?Admins&action=listeArtistes">Artsites</a></li>
						<li class="itemMenu"><a href="index.php?Admins&action=">Soumission</a></li>
						<li class="itemMenu"><a href="index.php?Admins&action=">Caroussel</a></li>
						<li class="itemMenu"><a href="index.php?AdminsAjax&action=importation">Mise à jour BD</a></li>
						<li class="itemMenu"><a href="index.php?Admins&action=apropos">À Propos</a></li>
					</ul>
				</nav>	
			</div>
		</header>
		<!--fin Section ENTÊTE-->