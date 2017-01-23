<body>
<!--debut du conteneur GLOBAL-->
	<div id ="global">
		<!--Debut Section ENTÊTE-->
		<header class ="entete">
			<div id="SessionUsager" class="flex row JCspace-between">
				<a href="index.php">
					<img id="logo" src="images/logo.png" alt="logo">
				</a>
				<a class="btnFinSession" href="./index.php?Admins&action=finSession">Se déconnecter</a>
			</div>
			<div class="menu">
				<!--<nav class="menuPrincipal flex column JCspace-around">
					<ul class="flex row JCspace-around mt30">
						<a class="btnMenu" href="index.php?Admins&action=listeDesOeuvres"><li class="itemMenu"><span class="mettreValeurBTN">Gérer les oeuvres</span></li></a>
						<a class="btnMenu" href="index.php?Admins&action=gererCaroussel"><li class="itemMenu">Modifier le caroussel</li></a>
					</ul>
					<ul class="flex row JCspace-around mt30 mb30">
						<a class="btnMenu" href="index.php?Admins&action=apropos"><li class="itemMenu">Modifier la page À Propos</li></a>
						<a class="btnMenu" href="index.php?AdminsAjax&action=importation"><li class="itemMenu">Mettre à jour les données</li></a>
					</ul>
				</nav>	-->
				<nav class="menuPrincipal flex row JCflex-start">
					<a class="btnMenu" href="index.php?Admins&action=listeDesOeuvres">Gérer les oeuvres</a>
					<a class="btnMenu" href="index.php?Admins&action=gererCaroussel">Modifier le caroussel</a>
					<a class="btnMenu" href="index.php?Admins&action=apropos">Modifier la page À Propos</a>
					<a class="btnMenu" href="index.php?AdminsAjax&action=importation">Mettre à jour les données</a>
				</nav>	
			</div>
		</header>
		<!--fin Section ENTÊTE-->