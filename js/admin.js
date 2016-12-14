(function(){
    window.addEventListener("load", function(){
       if(document.querySelector(".nomDeClasseHTML")){
           
           var btnModif = document.querySelector(".btnModifier");
           btnModif.addEventListener("click",function(evt){
               console.log("yep");
               console.log(evt);
               //history.back();
               
           var valDesc = document.querySelector("textarea[name=description]").value; // un textearea avec un name description, sans formulaire
               
           })
           
       } ;
        
    });
    
})();