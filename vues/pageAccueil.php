<div id="pageAccueil">
<!--Debut Section PRINCIPAL-->				
	<section class = "principal">					
		<form>
			<input type ="text" id ="recherche"  placeholder="Recherche">
			
			<div id="rechercheAvancee">
				<select id="categorie"><option>Recherche par catégorie</option>
				<?php 
					foreach($data as $categorie){
						echo"<option value='{$categorie["nom"]}'>{$categorie["nom"]}</option>";
									
					}

				?>
				</select>
				<select id="lieu"><option>Recherche par lieu</option>
				
					<?php 
					foreach($data as $arrondissement){
						echo"<option value='{$arrondissement["nom"]}'>{$arrondissement["nom"]}</option>";
									
					}

					?>
				</select>
				
				<select id="artiste"><option>Recherche par Artiste</option></select>
			</div>
			
		</form>
		
		<button id="IndiquerUneOuevre" >indiquez une oeuvre</button>
		
	</section>
	<!--fin Section PRINCIPAL-->	
</div>
