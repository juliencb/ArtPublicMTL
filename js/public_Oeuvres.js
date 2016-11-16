//IIFE
//===SESCTION OEUVRES
//Requetes AJAX pour l'affichage des oeuvres par catégorie et arrondissement lorsque la selection d'une options est faite dans la vue des Oeuvres===//
(function(){
window.addEventListener("load", function(){
		if($("#sectionOeuvres")){
			$("#categorie").on("change",function(){
				var _categorie=$("#categorie").val();
                $.get("./index.php?Public_AJAX&action=afficheOeuvresCategorie&categorie="+ _categorie, function(data){
                  
				   $('#collectionOeuvres').html("");
				   $('#collectionOeuvres').html(data);
                
                });
				
			});
            
			$("#arrondissements").on("change",function(){
				var _arrondissement=$("#arrondissements").val();
                $.get("./index.php?Public_AJAX&action=afficheOeuvresArrondissement&arrondissement="+ _arrondissement, function(data){
				   $('#collectionOeuvres').html("");
				   $('#collectionOeuvres').html(data);
                
                });
				
			})
			
		}


	});	
})();	
//===FIN SECTION OEUVRES====//