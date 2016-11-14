<!--commencer directement avec la div contenu-->
<div class="contenu">
	<aside class="recherche">
		<!--recherche ici -->
	</aside>
	<div id="descriptionArtiste">
		<?php 

		//var_dump($data);
		
			
		?>
				<h1>Biographie
					<?php echo $data["prenom"] . " " . $data["nom"] . " " . $data["nomCollectif"]; ?>	
				</h1>
				<p><?php echo $data["biogrphie"] ?></p>
			<!--<img src="">-->
	
	</div>	
</div>	

