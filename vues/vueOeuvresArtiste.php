	<div class="photosOeuvreUnArtiste">
		<?php
			foreach ($data as $imagesOeuvre) { 
				if($imagesOeuvre["urlImage"]== ""){
					$imagesOeuvre["urlImage"] = "no-image-available";
				}
		?>
			<img src="./images/<?php echo $imagesOeuvre["urlImage"]; ?>.jpg">
		<?php		
			}
		?>
	</div>	
</div><!--fermeture div contenu-->