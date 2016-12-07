<script>
	//Recherche Prenom
	window.addEventListener("load", function(){	
		var artiste = document.getElementById("artiste");
		var nomCollectif = document.getElementById("nomCollectif");
		var formSoumission = document.getElementById("divSoumission");
		var keyupInArtisteName = false;
		var focusInArtisteName = false;
        
		artiste.addEventListener("keyup", function(){
			keyupInArtisteName = true;
		});
		
		formSoumission.addEventListener("keyup", function(){
			if (! keyupInArtisteName || ! focusInArtisteName) {
				effaceChild("resultatRechercheArtiste");
			}
			effaceChild("resultatRechercheCollectif");
		});
		formSoumission.addEventListener("click", function(){
			effaceChild("resultatRechercheArtiste");
			effaceChild("resultatRechercheCollectif");
		});
		
		artiste.addEventListener("keyup", function(){
			//déclaration de l'objet XMLHttpRequest
			var xhr;
			xhr = new XMLHttpRequest();
			if(xhr){	
				if(artiste.value != ""){
					var prenomArtiste = document.getElementById("prenomArtiste").value;
					var nomArtiste = document.getElementById("nomArtiste").value;
					if (prenomArtiste.length + nomArtiste.length > 0 ) { 
						
						xhr.open("GET", "http://localhost/ArtPublicMTL/index.php?Public_AJAX&action=rechercheArtiste&prenom="+document.getElementById("prenomArtiste").value+"&nom="+document.getElementById("nomArtiste").value);
						//xhr.open("GET", http://e1595242.webdev.cmaisonneuve.qc.ca/ArtPublicMTL/index.php?Public_AJAX&action=recherchePrenom&prenom="+document.getElementById("prenomArtiste").value);
						xhr.addEventListener("readystatechange", function(){
							
							if(xhr.readyState === 4){
								if(xhr.status === 200){
									afficheResultatRechercheArtiste("resultatRechercheArtiste",xhr.responseText.trim());
								}
							
								else if(xhr.status === 404){
									//Aucune action dans le cas oû on ne trouve pas l'URL
								}
							}
						});
						//envoi de la requête
						xhr.send();
					}
					else{
							effaceChild("resultatRechercheArtiste");
					}		
				}
			}
		});	
		
		nomCollectif.addEventListener("keyup", function(){
			//déclaration de l'objet XMLHttpRequest
			var xhr;
			xhr = new XMLHttpRequest();
			if(xhr){	
				if(nomCollectif.value != ""){
						
						xhr.open("GET", "http://localhost/ArtPublicMTL/index.php?Public_AJAX&action=rechercheCollectif&nomCollectif="+nomCollectif.value);
						xhr.addEventListener("readystatechange", function(){
							
							if(xhr.readyState === 4){
								if(xhr.status === 200){
									afficheResultatRechercheCollectif("resultatRechercheCollectif",xhr.responseText.trim());
								}
							
								else if(xhr.status === 404){
									//Aucune action dans le cas oû on ne trouve pas l'URL
								}
							}
						});
						//envoi de la requête
						xhr.send();
				}
				else{
					effaceChild("resultatRechercheCollectif");
				}		
			}
		});	
	});

    function effaceChild(nomDiv) {
            var division = document.getElementById(nomDiv);			
            var fc = division.firstChild;
            while( fc ) {
                division.removeChild( fc );
                fc = division.firstChild;
            }						
        }

    //Fonction pour parser le xml 
    function xmlParse(xml){
        if (window.DOMParser){
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(xml, "text/xml");
          }
        else{ // Internet Explorer
            xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
            xmlDoc.async = false;
            xmlDoc.loadXML(xml);
          }
    }

        // Fonction pour trouver la valeur d'un id dans un xml de contact
    function xmlValue(xml,id) {		
        xmlParse(xml);		  
        var contact = xmlDoc.getElementsByTagName("contact"); 
        return contact[0].getElementsByTagName(id)[0].childNodes[0].nodeValue;
    }
	
	function afficheResultatRechercheArtiste(nomDiv,xml) {			
        effaceChild(nomDiv);
        xmlParse(xml);	
        var listeResultatRecherche = xmlDoc.getElementsByTagName("resultatRecherche");			
        var id = "";
        var liste=document.createElement("ul");
        
        for(var i = 0; i < listeResultatRecherche.length; i++){
            var nomArtiste = listeResultatRecherche[i].getElementsByTagName("nomArtiste")[0].childNodes[0].nodeValue;
            var prenomArtiste = listeResultatRecherche[i].getElementsByTagName("prenomArtiste")[0].childNodes[0].nodeValue;
            var resultat = prenomArtiste + " " + nomArtiste ;
            var li = document.createElement("li");
            var lien = document.createTextNode(resultat);
            var a = document.createElement("a");					
            a.title = resultat;
            a.href ="javascript: modifierArtiste('"+prenomArtiste+"' , '"+ nomArtiste+"' , '"+nomDiv+"');";
            a.appendChild(lien);
            li.appendChild(a);
            liste.appendChild(li);
        }						
        document.getElementById(nomDiv).appendChild(liste);
    }
			
	function afficheResultatRechercheCollectif(nomDiv,xml) {			
        effaceChild(nomDiv);
        xmlParse(xml);	
        var listeResultatRecherche = xmlDoc.getElementsByTagName("resultatRecherche");			
        var id = "";
        var liste=document.createElement("ul");

        for(var i = 0; i < listeResultatRecherche.length; i++){
            var resultat = listeResultatRecherche[i].getElementsByTagName("nomCollectif")[0].childNodes[0].nodeValue; 
            var li = document.createElement("li");
            var lien = document.createTextNode(resultat);
            var a = document.createElement("a");					
            a.title = resultat;
            a.href ="javascript: modifierNomCollectif('"+resultat+"' , '"+nomDiv+"');"; 
            a.appendChild(lien);
            li.appendChild(a);
            liste.appendChild(li);
        }						
        document.getElementById(nomDiv).appendChild(liste);
    }
	
	function modifierArtiste(prenomArtiste, nomArtiste, nomDiv){
		document.getElementById("prenomArtiste").value = prenomArtiste;
		document.getElementById("nomArtiste").value = nomArtiste;

		mettreBioAJour(prenomArtiste, nomArtiste, "")
		effaceChild(nomDiv)

	}

	function modifierNomCollectif(nomCollectif, nomDiv){
		document.getElementById("nomCollectif").value = nomCollectif;

		mettreBioAJour("", "", nomCollectif)
		effaceChild(nomDiv);

	}
	
	function mettreBioAJour(prenomArtiste, nomArtiste, nomCollectif) {
			var xhr;
			xhr = new XMLHttpRequest();
			if(xhr){	
						
						xhr.open("GET", "http://localhost/ArtPublicMTL/index.php?Public_AJAX&action=obtenirBio&prenomArtiste="+prenomArtiste+"&nomArtiste="+nomArtiste+"&nomCollectif="+nomCollectif);
						xhr.addEventListener("readystatechange", function(){							
							if(xhr.readyState === 4){
								if(xhr.status === 200){
									// On modifie la bio seuleument s'il y en a une sinon on garde le texte entree s'il y a lieu dans le texarea.
									if (xhr.responseText != "") document.getElementById("bio").value = xhr.responseText;
									return;
								}							
								else if(xhr.status === 404){
									//Aucune action dans le cas oû on ne trouve pas l'URL
								}
							}
						});
						//envoi de la requête
						xhr.send();					
			}		
		
	}


    $(document).ready(function(){
        //Stack overflow http://stackoverflow.com/questions/8838648/onchange-event-handler-for-radio-button-input-type-radio-doesnt-work-as-one
        // Des fois la paresse l'emporte!
        $('input:radio[name="nomOuCollectif"]').change(function() {
             for (var i = 0; i < 2; i++) {
                if (document.getElementsByName('nomOuCollectif')[i].checked){	
                    if (i ==1){
                        document.getElementById("spanPrenom").style = "color: grey";
                        document.getElementById("spanNom").style = "color: grey";
                        document.getElementById("nomArtiste").disabled = true;
                        document.getElementById("prenomArtiste").disabled = true;
                        document.getElementById("spanCollectif").style = "color: black";
                        document.getElementById("prenomArtiste").value = "";
                        document.getElementById("nomArtiste").value = "";
                        document.getElementById("nomCollectif").disabled = false;				
                    }
                    if (i ==0){
                        document.getElementById("spanPrenom").style = "color: black";
                        document.getElementById("spanNom").style = "color: black";
                        document.getElementById("nomArtiste").disabled = false;
                        document.getElementById("prenomArtiste").disabled = false;
                        document.getElementById("spanCollectif").style = "color: grey";
                        document.getElementById("nomCollectif").value = "";
                        document.getElementById("nomCollectif").disabled = true;	
                    }
                }
            }
        });

        //References http://stackoverflow.com/questions/23980733/jquery-ajax-file-upload-php
        $("#formChargementImage").change(function(){
            var file_data = $('#chargerImage').prop('files')[0];   
            var form_data = new FormData();                                              
            form_data.append('file', file_data);
            $.ajax({
                url: 'http://localhost/ArtPublicMTL/vues/upload.php', // point to server-side PHP script 
                dataType: 'text',  // what to expect back from the PHP script, if anything
                cache: false,
                contentType: false,
                processData: false, 
                data: form_data,                         								
                type: 'post',
                success: function(nom_fichier){
                    var imgForm = document.getElementById("formChargementImage");
                    var img;
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
				
	$(document).ready(function(){
		$("#envoyerSoumission").click(function(){
			
			
			//obtenir les infos du formulaire
			var id = document.getElementById("id").value;
			var titre = document.getElementById("titre").value;
            var selectCategorie = document.getElementById("categorie");
			var categorie = selectCategorie.options[selectCategorie.selectedIndex].value;

            var selectArrondissement = document.getElementById("arrondissements");

			var arrondissement = selectArrondissement.options[selectArrondissement.selectedIndex].value;
			var adresse = document.getElementById("adresse").value;
			var description = document.getElementById("description").value;
			var image; 
			if (document.getElementById("imgId") == null){
				image = "";
			}
			else {
				image= document.getElementById("imgId").src;
			}

			var titreVariante = document.getElementById("titreVariante").value; // !
			var nomParc = document.getElementById("nomParc").value;
			var batiment = document.getElementById("batiment").value;
			var prenomArtiste = document.getElementById("prenomArtiste").value;
			var nomArtiste = document.getElementById("nomArtiste").value;
			var nomCollectif = document.getElementById("nomCollectif").value;
			var bio = document.getElementById("bio").value;
			var modeAcquisition = document.getElementById("modeAcquisition").value;
			var numeroAccession = document.getElementById("numeroAccession").value;
			var dateAccession = document.getElementById("dateAccession").value;
			var materiaux = document.getElementById("materiaux").value;
			var support = document.getElementById("support").value;
			var technique = document.getElementById("technique").value;
			var categorieObjet = document.getElementById("categorieObjet").value; // !
			var dimensionGenerales = document.getElementById("dimensionGenerales").value;
			var coordonneeLatitude = document.getElementById("coordonneeLatitude").value;
			var coordonneeLongitude = document.getElementById("coordonneeLongitude").value;
			var mediums = document.getElementById("mediums").value;

			var nomCollection = document.getElementById("nomCollection").value; // !
			var valide;
			if(document.getElementById("valide").checked==true){
				valide = 1;
			}
			else{ valide = 0}

			// validation
			if (titre == "" || categorie == "" || arrondissement == "" || adresse == "" || description == "" || image == ""){
				document.getElementById("msgRetourSoumission").value= "Vous devez entrer les champs obligatoires (*)";
			}
			else{
			    $.post("http://localhost/ArtPublicMTL/index.php?Public_AJAX&action=envoieSoumission",
				{
					id: id,
					titre: titre,
					categorie: categorie,
					arrondissement: arrondissement,
					adresse: adresse,
					description: description,
					image: image,
					titreVariante: titreVariante,
					nomParc: nomParc,
					batiment: batiment,
					prenomArtiste: prenomArtiste,
					nomArtiste: nomArtiste,
					nomCollectif: nomCollectif,
					bio: bio,
					modeAcquisition: modeAcquisition,
					numeroAccession: numeroAccession,
					dateAccession: dateAccession,
					materiaux: materiaux,
					support: support,
					technique: technique,
					categorieObjet: categorieObjet,
					dimensionGenerales: dimensionGenerales,
					coordonneeLatitude: coordonneeLatitude,
					coordonneeLongitude: coordonneeLongitude,
					mediums: mediums,
					nomCollection: nomCollection,
					valide: valide
				},
				function(data, status){
					// data = <id>&<msg>
					var dataSplit = data.split("&");
					document.getElementById("id").value = dataSplit[0];
					//alert ("id="+ dataSplit[0]);
					
					document.getElementById("msgRetourSoumission").value= document.getElementById("id").value + "msg="+dataSplit[1];
	
				});
			}
			
		});
	});


</script>
	<?php
	 global $admin;
	 if (isset($param["id"])) {
		 echo "patate";
		// va chercher l'Oeuvre.
		$modeleOeuvres= new Modele_Oeuvres();
		$oeuvre = $modeleOeuvres->obtenirOeuvre($params["id"]);		
	 }

	?>
	<div id="divSoumission">
		<?php
			global $admin;
			if ($admin){
				echo "MODE ADMINISTRATEUR";
			}
		?>
	<!-- Form Obligatoire -->
		<form id="formSoumissionObligatoire">	
		
		<!--id de l'oeuvre -->
			<input type="text" name="inputid" id="id" <?php if (isset($oeuvre)){ echo "value=".$oeuvre["id"]; } ?>>
			
		<!--Titre de loeuvre-->
			<label class="elemSoumission"> <span class= "textElemSoumission">Titre de l'oeuvre</span><span id="etoileImportant">*</span></label>
			<input type="text" name="inputTitre" id="titre">
		
		<!--Categorie-->			
			<label class="elemSoumission"> <span class= "textElemSoumission">Catégorie</span><span id="etoileImportant">*</span></label>
			
			 <select id="categorie">
				<option>--</option>
				<?php 
					$modeleCategories= new Modele_Categories();
					$data = $modeleCategories->obtenirTous();
					foreach($data as $categorie){
						echo '<option value="' .$categorie["nom"] . '">' . $categorie["nom"] . "</option>";
					}
				?>
			</select>
			 
		<!--Arrondissement-->	 
			<label class="elemSoumission"> <span class= "textElemSoumission">Arrondissement</span><span id="etoileImportant">*</span></label>
			<select id="arrondissements">
				<option>--</option>
				<?php 
				   $modeleArrondissements= new Modele_Arrondissements();
				   $data= $modeleArrondissements->obtenirTous();
					foreach($data as $arrondissement){
						echo '<option value="' .$arrondissement["nom"] . '">' . $arrondissement["nom"] . "</option>";
					}
				?>
			 </select>
			 
		<!--Adresse Civique--> 
			<label class="elemSoumission"> <span class= "textElemSoumission">Adresse Civique</span><span id="etoileImportant">*</span></label>
			<input type="text" name= "inputAdresse" id="adresse">
			
		<!--Description de l'oeuvre--> 
			<label class="elemSoumission"> <span class= "textElemSoumission">Description de l'oeuvre</span><span id="etoileImportant">*</span></label>
			<textarea rows="4" cols="50" id="description" name="inputDescription"></textarea>	
		
		<!-- Fin form obligatoire -->
		</form>
		
	<!-- Form Chargement Image -->
		<form id="formChargementImage">
			<label for="chargerImage" class="btn" id="labelImportImage">Importez votre image<span id="etoileImportant">*</span></label>
			<input id="chargerImage" type="file" name="sortpic" style="visibility:hidden;"/>
		</form>
		
	<!-- Bouton afficher Form Optionnel -->		
		<input type="button" value="Ajouter plus d'informations" id="btnAjoutInfos" onclick="afficherOptionnel()">
	
	
	
	

	
	<!-- Form Optionnel -->	

		<form id="formSoumissionOptionnel" style="display: none";>
		
			<!--titre variante-->
			<label class="elemSoumission"> <span class= "textElemSoumission">Titre variante</span></label>
			<input type="text" name="inputTitreVariante" id="titreVariante">
		

			<!--Nom du Parc-->
			<label class="elemSoumission"> <span class= "textElemSoumission">Nom du parc</span></label>
			<input type="text" name="inputNomParc" id="nomParc">
			
			<!--Nom du Batiment-->
			<label class="elemSoumission"> <span class= "textElemSoumission"> Batiment</span></label>
			<input type="text" name="inputBatiment" id="batiment">
			
			
			<br><br>
			
		<!--Radio Nom artiste-->
			<input type="radio" name= "nomOuCollectif" value="nomArtiste" checked>
			
			<!-- artiste -->
			<div id="artiste">
				<!--Prenom-->
				<label class="elemSoumission" id="labelPrenom"> <span class= "textElemSoumission" id="spanPrenom">Prenom de l'artiste</span></label>
				<input type="text" name="inputPrenomArtiste" id="prenomArtiste">
				<!--Nom-->
				<label class="elemSoumission" id="labelNom"><span id="spanNom">Nom de l'artiste</span></label>
				<input name="inputTextNom" type="text" id="nomArtiste"><br><br>
				<!-- Affichage resultat Recherche Artiste-->		
				<div id="resultatRechercheArtiste"></div>
			</div>
			
			
			
		<!--Radio Collectif-->
			<input type="radio" name= "nomOuCollectif" value="nomCollectif"><br>
			
			<!--Collectif-->
			<label class="elemSoumission" id="labelCollectif"><span class= "textElemSoumission" id="spanCollectif" style="color: grey;">Nom de collectif</span></label>
			<input name="inputTextCollectif" type="text" id="nomCollectif" disabled><br><br>
			<!-- Affichage resultat Recherche Collectif-->
			<div id="resultatRechercheCollectif"></div>
			
			<!--Bio de l'artiste-->
			<label class="elemSoumission"> <span class= "textElemSoumission">Biographie de l'artiste</span></label>
			<textarea rows="4" cols="50" name="inputBio" id="bio"></textarea>
			
			<!-- Mode d'acquisition -->
			<label class="elemSoumission"> <span class= "textElemSoumission">Mode d'acquisition</span></label>
			<input type="text" name="inputModeAcquisition" id="modeAcquisition">
			
			<!-- Numero d'accession -->
			<label class="elemSoumission"> <span class= "textElemSoumission">Numero d'accession</span></label>
			<input type="text" name="inputNumeroAccession" id="numeroAccession">
			
			<!-- Date d'accession -->
			<label class="elemSoumission"> <span class= "textElemSoumission">Date d'accession</span></label>
			<input type="text" name="inputDateAccession" id="dateAccession">
			
			<!-- Matériaux -->
			<label class="elemSoumission"> <span class= "textElemSoumission">Matériaux</span></label>
			<input type="text" name="inputMateriaux" id="materiaux">
			
			<!-- Support -->
			<label class="elemSoumission"> <span class= "textElemSoumission">Support</span></label>
			<input type="text" name="inputSupport" id="support">
			
			<!-- Technique -->
			<label class="elemSoumission"> <span class= "textElemSoumission">Technique</span></label>
			<input type="text" name="inputTechnique" id="technique">
			
			<!-- categorieObjet -->
			<label class="elemSoumission"> <span class= "textElemSoumission">Categorie de l'objet</span></label>
			<input type="text" name="inputCategorieObjet" id="categorieObjet">
			
			<!-- Dimensions generales -->
			<label class="elemSoumission"> <span class= "textElemSoumission">Dimensions generales</span></label>
			<input type="text" name="inputDimensionGenerales" id="dimensionGenerales">
			
		
			<!-- Coordonnee latitude -->
			<label class="elemSoumission"> <span class= "textElemSoumission">Coordonnee latitude</span></label>
			<input type="text" name="inputCoordonneeLatitude" id="coordonneeLatitude">
		
			<!-- Coordonnee longitude -->
			<label class="elemSoumission"> <span class= "textElemSoumission">Coordonnee longitude</span></label>
			<input type="text" name="inputCoordonneeLongitude" id="coordonneeLongitude">
		
			<!-- Mediums -->
			<label class="elemSoumission"> <span class= "textElemSoumission">Mediums</span></label>
			<input type="text" name="inputMediums" id="mediums">
			
			<!-- Nom Collection -->
			<label class="elemSoumission"> <span class= "textElemSoumission">Nom Collection</span></label>
			<input type="text" name="inputNomCollection" id="nomCollection">
			
			<!-- Valide -->
			<?php
				global $admin;
				if ($admin){	
					echo "<label class='elemSoumission'> <span class= 'textElemSoumission'>Accepter</span></label>";
					echo "<input type='checkbox' name='inputValide' id='valide' value='valide'>";
				}
				else{
					echo "<label class='elemSoumission'> <span class= 'textElemSoumission' style='visibility: hidden;'>Accepter</span></label>";
					echo "<input type='checkbox' style='visibility: hidden; name='inputValide' id='valide' value='valide'>";
				}
			?>
		
		</form>
		<br><br>
		<input type="submit" value="Soumettre l'oeuvre" id="envoyerSoumission"/>
		<textarea rows="100" cols="100" id="msgRetourSoumission"></textarea>

	</div>

