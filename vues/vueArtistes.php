<!--commencer directement avec la div contenu-->
<div class="contenu">
	<aside class="recherche">
		<!--recherche ici -->
	</aside>
	<div id="zoneMontreeDeLaPage">
		<section id="artistes">
			<h1>Artistes</h1>
				<ul>
					<?php 
						foreach ($data as $artiste){
					?>
							<li>
								<a href="index.php?Public&action=descriptionArtiste&id=<?php echo $artiste['id'] ?>">
									<?php echo $artiste["prenom"] . " " . $artiste["nom"] . " " . $artiste["nomCollectif"]; ?>
								</a>
							</li>
					<?php 
						} //fermeture foreach
					?>
				</ul>
		</section>
	</div>
</div>	

