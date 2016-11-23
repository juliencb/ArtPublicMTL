<script>
//References http://stackoverflow.com/questions/23980733/jquery-ajax-file-upload-php
			$(document).ready(function(){
				//Stack overflow http://stackoverflow.com/questions/8838648/onchange-event-handler-for-radio-button-input-type-radio-doesnt-work-as-one
				$('input:radio[name="nomOuCollectif"]').change(function() {
					 for (var i = 0; i < 2; i++) {
						if (document.getElementsByName('nomOuCollectif')[i].checked){	
							if (i ==1){
								document.getElementById("spanPrenom").style = "color: grey";
								document.getElementById("spanNom").style = "color: grey";
								document.getElementById("inputTextNom").disabled = true;
								document.getElementById("inputTextPrenom").disabled = true;
								document.getElementById("spanCollectif").style = "color: black";
								document.getElementById("inputTextPrenom").value = "";
								document.getElementById("inputTextNom").value = "";
								document.getElementById("inputTextCollectif").disabled = false;				
							}
							if (i ==0){
								document.getElementById("spanPrenom").style = "color: black";
								document.getElementById("spanNom").style = "color: black";
								document.getElementById("inputTextNom").disabled = false;
								document.getElementById("inputTextPrenom").disabled = false;
								document.getElementById("spanCollectif").style = "color: grey";
								document.getElementById("inputTextCollectif").value = "";
								document.getElementById("inputTextCollectif").disabled = true;	
							}
						}
					}
				});
				
			
			
			
				$("#formChargementImage").change(function(){
					//alert("patate"); 
					var file_data = $('#chargerImage').prop('files')[0];   
					var form_data = new FormData();                  
					//alert(form_data);                             
					form_data.append('file', file_data);
					//form_data.append('tofile', "Image123");
					//var tofile = "Image123";
					$.ajax({
								//url: 'http://localhost/ArtPublicMTL/index.php?Public_AJAX&action=telechargementImage', // point to server-side PHP script 
								url: 'http://localhost/ArtPublicMTL/vues/upload.php', // point to server-side PHP script 
								dataType: 'text',  // what to expect back from the PHP script, if anything
								cache: false,
								contentType: false,
								processData: false,
								//data: {form_data,'tofile':tofile},   
								data: form_data,                         								
								type: 'post',
								success: function(nom_fichier){
								    // code pour prendre le nom de fichier a faire.
									//alert("NOM FICHIER:" + nom_fichier); // display response from the PHP script, if any
									// Ajouter ou modifier l'image. 
									var imgForm = document.getElementById("formChargementImage");
									var img;
									//alert ("imgId:" + document.getElementById("imgId"));
									if (document.getElementById("imgId") == null){
									  img = document.createElement("img");
									  img.id = "imgId";
									  img.style = "width: 150px; margin-left: -100px;"; 
									  img.src = nom_fichier.substring(3);
									  imgForm.appendChild(img);
									  document.getElementById("labelImportImage").innerHTML="Changez l'image";
									}
									else {
									  img = document.getElementById("imgId");
									  img.src = nom_fichier.substring(3);
									  
									}
									
								}
					 });
				});
			});
			function afficherOptionnel(){
				document.getElementById("formSoumissionOptionnel").style.display="inline";
				document.getElementById("btnAjoutInfos").style.visibility="hidden";
			}

</script>

	<div id="divSoumission">
		<form id="formSoumissionObligatoire">	
			Titre de l'oeuvre*<br><input type="text" name="titre"><br><br>		
			 Catégorie*<br>
			 <select id="categorie">
				<option>--</option>
				<?php 
					$modeleCategories= new Modele_Categories();
					$data = $modeleCategories->obtenirTous();

					foreach($data as $categorie){
						echo"<option value='" . utf8_encode($categorie["nom"]) . "'>" . utf8_encode($categorie["nom"]) . "</option>";
					}
				?>
			</select>
			<br><br>
			Arrondissement*<br>
			<select id="arrondissements">
				<option>--</option>
				<?php 
				   $modeleArrondissements= new Modele_Arrondissements();
				   $data= $modeleArrondissements->obtenirTous();

					foreach($data as $arrondissement){
						echo"<option value='" . utf8_encode($arrondissement["nom"]) . "'>" . utf8_encode($arrondissement["nom"]) . "</option>";
					
					}

				?>
			 </select>
			 <br><br>
			 Adresse civique*<br><input type="text" name="adresse"><br>
			 <br><br>
			Description de l'oeuvre*<br><textarea rows="4" cols="50" name="description"></textarea>	
		</form>
		

		<form id="formChargementImage">
			<label for="chargerImage" class="btn" id="labelImportImage">Importez votre image</label>
			<input id="chargerImage" type="file" name="sortpic" style="visibility:hidden;"/>
		</form>
		
		<input type="button" value="Ajouter plus d'informations" id="btnAjoutInfos" onclick="afficherOptionnel()">
		<br><br>
		
		<form id="formSoumissionOptionnel" style="display: none";>
			Nom du parc<br><input type="text" name="nomParc"><br><br>
			Batiment<br><input type="text" name="batiment"><br><br>
			<input type="radio" name= "nomOuCollectif" value="nomArtiste" checked><br>
			<span id="spanPrenom">Prenom de l'artiste</span><br><input id="inputTextPrenom" type="text" name="prenomArtiste"><br>
			<span id="spanNom">Nom de l'artiste</span><br><input id="inputTextNom" type="text" name="nomArtiste"><br><br>
			<input type="radio" name= "nomOuCollectif" value="nomCollectif"><br>
			<span id="spanCollectif" style="color: grey;">Nom de collectif</span><br><input id="inputTextCollectif" type="text" name="nomCollectif" disabled><br><br>
			Biographie de l'artiste<br> <textarea rows="4" cols="50" name="bio"></textarea><br><br>
			Mode d'acquisition<br><input type="text" name="modeAcquisition"><br><br>
			Numero d'accession<br><input type="text" name="numeroAccession"><br><br>
			Date d'accession<br><input type="text" name="dateAccession"><br><br>
			Matériaux<br><input type="text" name="materiaux"><br><br>
			Support<br><input type="text" name="support"><br><br>
			Technique<br><input type="text" name="technique"><br><br>
			Dimensions generales<br><input type="text" name="dimensionGenerales"><br><br>
			Coordonnee latitude<br><input type="text" name="coordonneeLatitude"><br><br>
			Coordonnee longitude<br><input type="text" name="coordonneeLongitude"><br><br>
			Mediums<br><input type="text" name="mediums"><br><br>
		</form>
		<br>
		<input type="submit" value="Soumettre l'oeuvre"/>
	</div>

