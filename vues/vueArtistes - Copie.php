<!--commencer directement avec la div contenu-->
<div class="contenu">
	<div id="zoneMontreeDeLaPage">
		<section id="artistes">
			<h1>Artistes</h1>
			<nav id="menuArtistes">
				<ul>
					<?php
						//ABC code ASCII
						for ($i = 65; $i <= 90; $i++) { 
					?>
							<li><a href="index.php?Public&action=afficheListeArtistesParLettre&lettre=<?= chr($i)?>"><?= chr($i)?> </a></li>
					<?php 
						}
					?>
				</ul>
			</nav>	
			<nav id="voirTousArtistes"><a>Voir tous les artistes</a></nav>	
		</section>
	</div>
	<div id="zoneCacheDeLArtiste">
		<section id="listeArtistes">
			
			
				<?php
					foreach ($data as $artiste) { 
				?>
					<p><a href="index.php?Public&action=afficheDescriptionArtiste&id=<?= $artiste["id"]?> "><?= $artiste["prenom"] . " " . $artiste["nom"] . " " . $artiste["nomCollectif"]?></a></p>
				<?php
					}
				?>
		

		<section id="detailDeLArtiste">
			<h2>(Nom Artiste choisi)</h2>
			<p>(Description de l'artiste)</p>
			<img>(images de l'artiste)
        </section>
	</div>
</div>	

