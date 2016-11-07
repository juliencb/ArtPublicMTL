<script>
window.addEventListener("load", function()
{
	/*le code permet de verifier si l'usager selectionne excatement le nombre de checkbox qui lui est demander et 
	active la  le formulaire d'inscription*/
	
	
	//----------function qui va permettre de compter les checkbox selectionnée-----//
	$(".photo").on("mouseover",function()
	{
		var oeuvreId= $(this).attr('id');
		
		$Get("./index.php?Usagers_Ajax&action=affichedonneOeuvre&idOueuvre="+oeuvreId, function(data){
			if(data)
			{
				
				
			}
		});
		
	});
	
});
</script>