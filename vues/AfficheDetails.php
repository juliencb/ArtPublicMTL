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
	<?php
		if($data["titre"]!="")
		{
	
			echo "<li><span> Titre :"." ". $data["titre"]. "</span></li>";
		}	
		
		 if(($data["prenom"]&&$data["nom"]!="")&&($data["prenom"]!= null && $data["nom"]!= null ))
		 {
			echo "<li><span>Artiste : "." ". $data["prenom"]." ".$data["nom"]. "</span></li>";
	
		}
		else{
			echo "<li><span>Atelier : "." ". $data["nomCollectif"]."</span></li>";
		}
		if($data["categorieObjet"]!="")
		{
			echo "<li><span>Catégorie :"." ". $data["categorieObjet"]. "</span></li>";
		}	
		if($data["categorie"]!="")
		{
			echo "<li><span>Sous-Catégorie :"." ". $data["categorie"]. "</span></li>";
		}	
		if($data["parc"]!="")
		{
			echo "<li><span>Parc :"." ". $data["parc"]. "</span></li>";
	
		}
		if($data["materiaux"]!="")
		{
			echo "<li><span>Matériaux :"." ". $data["materiaux"]. "</span></li>";
	
		}	
		if($data["adresseCivique"]!="")
		{
			echo "<li><span>Adresse :"." ". $data["adresseCivique"]. "</span></li>";
		}		
		if($data["nomArrondissement"]!="")
		{
			echo "<li><span>Arrondissement :"." ". $data["nomArrondissement"]. "</span></li>";
		}	
			?>	
	</ul>	
</div>
