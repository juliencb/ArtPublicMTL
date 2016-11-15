
	
	<div id="collectionOeuvres">
		<?php
			$cont=0;
			foreach($data as $oeuvres)
			{

				if($cont<15)
				{
					
					echo"<div id='{$oeuvres["id"]}'>
					<a href=' #'>";
					
					if($oeuvres["urlImage"]=="")
					{
						$oeuvres["urlImage"]="no-image-available";
					}
					echo "<img class='photo' src='./images/{$oeuvres["urlImage"]}.jpg'alt='{$oeuvres["titre"]}'/>
						
					</a>
						<div class='hoverPhoto'>
						
							<span class='titreOeuvres'><a href=' #'>Titre: {$oeuvres["titre"]}</a></span>}
							<span class='nomArtistes'><a href=' #'>Artiste: {$oeuvres["prenom"]} {$oeuvres["nom"]}</a></span>
						</div>
					</div>";
					$cont++;
				}	
			}
		
		?>		
	</div>
		
</section>
<!--fin Section Oeuvres-->