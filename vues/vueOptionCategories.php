<<<<<<< HEAD


<!--Debut section des OEUVRES-->	
=======
﻿
<!--Debut Section des OEUVRES-->	
>>>>>>> origin/master
<section id="sectionOeuvres">
	<!--Debut menu PAGE OEUVRES-->	
	<aside class ="menu oeuvres">
		<div id="afficheRecherche"></div>
		 <select id="categorie">
			<option value="_">Catégorie</option>


			<?php 
				foreach($data as $categorie){
				echo"<option value='{$categorie["nom"]}'>{$categorie["nom"]}</option>";
				}

			?>
		</select>
		 
	