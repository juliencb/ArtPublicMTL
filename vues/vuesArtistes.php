<!--commencer directement avec la div contenu-->
<div class="contenu">
	<div id="zoneMontreeDeLaPage">
		<aside>
			<!--recherche-->
			La recherche ici
		</aside>
		<section id="artistes">
			<h1>Artistes</h1>
			<nav id="menuArtistes">
				<ul>
					<?php
						for ($i=65; $i<=90; $i++){
							echo "<li><a href='#'>" . chr($i) . "</a></li>"; // ABC
						}
					?>
				</ul>
			</nav>		
		</section>
	</div>
	<div id="zoneCacheDeLArtiste">
		<section id="listeArtistes"><!-- requete -->
			Ici la liste des artiste de la letre choisi
		</section>
		<section id="detailDeLArtiste">
			Ici les infos de l'artiste choisi
		</section>
	</div>
</div>	

