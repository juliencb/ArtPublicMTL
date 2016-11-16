
<!--Debut Section des OEUVRES-->	
<section id="sectionOeuvres">
	<!--Debut MENU PAGE OEUVRES-->	
	<aside class ="menu oeuvres">
		<div id="afficheRechercheICI"></div>
		 <select id="categorie">
			<option id=>Catégorie</option>
			<?php 
				foreach($data as $categorie){
				echo"<option value='{$categorie["nom"]}'>{$categorie["nom"]}</option>";
				}

			?>
		</select>
		 
	