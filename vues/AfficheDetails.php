
﻿
<div id="affichedata">
	<h1>Affichage des détails de l'oeuvre</h1>
	<?php
	
	
	if($data["urlImage"]!=""){
		?>
			<img src = " ./images/<?php echo $data["urlImage"]?>.jpg" alt = " <?php echo $data["titre"] ?>"/><br><br>
		<?php
	}
	else{
		?>
		<img src = "./images/no-image-available.jpg" alt = "aucune image"/><br><br>
		<?php
		
	}
	
	
	?>

	
			<ul>
					<li> Titre : <?php echo $data["titre"]?></li>
					<li> Artiste : <?php echo $data["prenom"]." ".$data["nom"]?></li>
					<li> Catégorie :<?php echo $data["categorieObjet"] ?></li>
					<li> Sous - Catégorie : <?php echo $data["categorie"] ?></li>
					<li> Parc : <?php echo $data["parc"] ?></li>
					<li> Matériaux : <?php echo $data["materiaux"] ?></li>
					<li> Adresse : <?php echo $data["adresseCivique"] ?></li>
					<li> Arrondissement : <?php echo $data["nom"] ?></li>
					
			</ul>	
				
				

</div>
