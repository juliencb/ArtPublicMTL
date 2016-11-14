<!--commencer directement avec la div contenu-->
<div class="contenu">
	<aside class="recherche">
		<!--recherche ici -->
	</aside>
	<div id="descriptionArtiste">
		<h1>Biographie
			<?php 
				if(isset["prenom"]) && isset("nom")


				 echo $data["prenom"] . " " . $data["nom"] . " " . $data["nomCollectif"]; ?>	
		</h1>
		<p><?php echo $data["biographie"] ?></p>
			<!--<img src="">-->
	
	</div>	
</div>	

