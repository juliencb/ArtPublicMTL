<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script>
		
		$(document).ready(function(){
		
			//La liste de contacts affichée lorsque l'utilisateur a entré une lettre dans la section "Recherche"
				//Lorsque l'utilisateur entre une lettre dans la section recherche : Affichage du GIF (1 seconde)
				$("#inputRecherche").keyup(function() {
					//alert (document.getElementById("inputRecherche").value.length);
					if (document.getElementById("inputRecherche").value.length > 1) { 
						<!-- http://localhost/TP2/index.php?Administration&action=authentification -->
						$.get("http://localhost/ArtPublicMTL/index.php?Public_AJAX&action=recherche&recherche="+document.getElementById("inputRecherche").value, 
						//$.get("http://e1595242.webdev.cmaisonneuve.qc.ca/ArtPublicMTL/index.php?Public_AJAX&action=recherche&recherche="+document.getElementById("recherche").value, 
						function(xmlResultatRecherche){			
							afficheResultatRecherche("resultatRecherche",xmlResultatRecherche);
						});		
					}
					else{
						effaceChild("resultatRecherche");
					}						
			});
		});

		// Fonction qui efface les éléments présents dans la division.
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
		
		function afficheResultatRecherche(nomDiv,xml) {			
			effaceChild(nomDiv)
			xmlParse(xml);	
			var listeResultatRecherche = xmlDoc.getElementsByTagName("resultatRecherche");			
			console.log(listeResultatRecherche.length);

			var id = "";
			var liste=document.createElement("ul");;
			for(var i = 0; i < listeResultatRecherche.length; i++){
				if (id !=  listeResultatRecherche[i].getElementsByTagName("id")[0].childNodes[0].nodeValue) {
					if (i > 0) document.getElementById(nomDiv).appendChild(liste);
					var id = listeResultatRecherche[i].getElementsByTagName("id")[0].childNodes[0].nodeValue;
					var h1 = document.createElement("h1");
					h1.id = "titreListe";
					if(id=="artiste")var titre = document.createTextNode("Artistes");
					if(id=="lieu")var titre = document.createTextNode("Arrondissements");
					if(id=="categorie")var titre = document.createTextNode("Catégories");
					if(id=="oeuvre")var titre = document.createTextNode("Oeuvres");
					h1.appendChild(titre);
					document.getElementById(nomDiv).appendChild(h1);
					liste=document.createElement("ul");
					
				}
				var resultat = listeResultatRecherche[i].getElementsByTagName("resultat")[0].childNodes[0].nodeValue;
				var li = document.createElement("li");
				var lien = document.createTextNode(resultat);
				var a = document.createElement("a");					
				a.title = resultat;
				if (id=="lieu" || id=="categorie") {
					a.href ="http://localhost/ArtPublicMTL/index.php?Public&action=afficheListeOeuvres&id="+id+"&idValue="+resultat; 
				}
				if (id=="artiste"){
					a.href ="http://localhost/ArtPublicMTL/index.php?Public&action=afficheArtiste&nom="+resultat; 					
				}
				if (id=="oeuvre"){
					a.href ="http://localhost/ArtPublicMTL/index.php?Public&action=afficheOeuvre&titre="+resultat; 					
				}
				a.appendChild(lien);
				li.appendChild(a);
				liste.appendChild(li);
			}						
			document.getElementById(nomDiv).appendChild(liste);
		}
	</script>
</head>
<body>

<div id="resultatRecherche"></div>
<form id="formRecherche" method="POST">
		<input type="text" id="inputRecherche"/><br/>
</form>
</body>
</html>
