<?php
?>
<script>
//IIFE    
    (function(){
        window.on("load",function(){
            if($("#sectionOeuvres")){
                $("#categorie").on("change",function(){
                    console.log($("#categorie").val);
                    
                })
                
            }
    
    
        });	
    })();	
</script>
<?php	
?>