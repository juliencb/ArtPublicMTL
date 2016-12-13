<!--commencer directement avec la div contenu-->
<div class="contenu">
	<section id="descriptionArtiste">
		<h1 class="bioArtiste">Biographie
			<?php 
				if (isset($data["prenom"]) && isset($data["nom"])){
					echo $data["prenom"] . " " . $data["nom"]; 	
				} elseif(isset($data["nomCollectif"])){
					echo $data["nomCollectif"];
				}
			?>
		</h1>
		<div id="infosMonArtiste" class="flex row-reverse JCflex-start ACflex-start">
			<p>
				<?php echo $data["biographie"]; ?>
			</p>
