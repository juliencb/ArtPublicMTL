(function(){
	window.addEventListener("load", function(){
		//lorsque je clique sur btnAjax
		var inputRecherche = document.getElementById("inputRecherche");
		inputRecherche.addEventListener("keyup", function(){
			//déclaration de l'objet XMLHttpRequest
			var xhr;
			xhr = new XMLHttpRequest();
			if(xhr){	
				if(inputRecherche.value != 0){
					if (document.getElementById("inputRecherche").value.length > 1) { 
						xhr.open("GET", "./index.php?Public_AJAX&action=recherche&recherche="+document.getElementById("inputRecherche").value);
						//xhr.open("GET", http://e1595242.webdev.cmaisonneuve.qc.ca/ArtPublicMTL/index.php?Public_AJAX&action=recherche&recherche="+document.getElementById("inputRecherche").value);
						xhr.addEventListener("readystatechange", function(){
							
							if(xhr.readyState === 4){
								if(xhr.status === 200){
									afficheResultatRecherche("resultatRecherche",xhr.responseText.trim());
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
				        effaceChild("resultatRecherche");
					}		
				}
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
        console.log(xmlDoc);
        var listeResultatRecherche = xmlDoc.getElementsByTagName("resultatRecherche");			

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
                a.href ="./index.php?Public_AJAX&action=afficheOeuvres"+id+"&id="+id+"&idValue="+resultat; 
            }
            if (id=="artiste"){
                //a.href ="http://localhost/ArtPublicMTL/index.php?Public&action=descriptionArtiste&id="+resultat; 					
                a.href ="#"; 					
            }
            if (id=="oeuvre"){
                //a.href ="http://localhost/ArtPublicMTL/index.php?Public&action=details&titre="+resultat; 					
                a.href ="#"; 					
            }
            a.appendChild(lien);
            li.appendChild(a);
            liste.appendChild(li);
        }						
        document.getElementById(nomDiv).appendChild(liste);
    }
})();