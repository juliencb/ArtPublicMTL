// IIFE
(function(){
    window.addEventListener("load", function(){
        if(document.querySelector(".modifierOeuvre"))
        {
            var btnModif = document.querySelector(".btnModifier");
            btnModif.addEventListener("click", function(evt){
                console.log(evt);
                var valeurDesc = document.querySelector("textarea[name=description]").value;
                var valeurCat = document.querySelector("[name=categories]").value;
                var data = JSON.stringify({Description : valeurDesc, Categorie : valeurCat});
                
                var xhr = new XMLHttpRequest();
                /*xhr.addEventListener("readystatechange", function(e){
                    console.log(e.currentTarget); 
                });*/
                xhr.open("POST", "http://127.0.0.1/artPublic/api/admin/oeuvre/1119/", true);
                xhr.setRequestHeader("Content-type", "application/json");
                
                xhr.addEventListener("load", function(e){
                    console.log(e.currentTarget.responseText);
                    document.querySelector("textarea[name=description]").value = e.currentTarget.responseText;
                });
                xhr.send(data);
                
                
            });
            
            document.querySelector(".btnAnnuler").addEventListener("click", function(){
                history.back(); 
            });
            
        }
        
        
    });
    
    
    
    
})();