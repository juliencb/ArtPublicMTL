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
			echo "<li>Artiste : "." ". $data["prenom"]." ".$data["nom"]. "</li>";
	
		}
		else{
			echo "<li>Atelier : "." ". $data["nomCollectif"]."</li>";
		}
		if($data["categorieObjet"]!="")
		{
			echo "<li> Catégorie :"." ". $data["categorieObjet"]. "</li>";
		}	
		if($data["categorie"]!="")
		{
			echo "<li> Sous-Catégorie :"." ". $data["categorie"]. "</li>";
		}	
		if($data["parc"]!="")
		{
			echo "<li> Parc :"." ". $data["parc"]. "</li>";
	
		}
		if($data["materiaux"]!="")
		{
			echo "<li> Matériaux :"." ". $data["materiaux"]. "</li>";
	
		}	
		if($data["adresseCivique"]!="")
		{
			echo "<li> Adresse :"." ". $data["adresseCivique"]. "</li>";
		}		
		if($data["nomArrondissement"]!="")
		{
			echo "<li> Arrondissement :"." ". $data["nomArrondissement"]. "</li>";
		}	
			?>	
	</ul>	
</div>
