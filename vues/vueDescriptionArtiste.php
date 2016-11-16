<!--commencer directement avec la div contenu-->
<div class="contenu">
	<aside class="recherche">
		<!--recherche ici -->
	</aside>
	<div id="descriptionArtiste">
		<h1 class="bioArtiste">Biographie
			<?php 
				if (isset($data["prenom"]) && isset($data["nom"])){
					echo $data["prenom"] . " " . $data["nom"]; 	
				} elseif(isset($data["nomCollectif"])){
					echo $data["nomCollectif"];
				}
			?>
		</h1>
		<p>
			<?php echo $data["biographie"]; ?>
		</p>
	</div>
	

