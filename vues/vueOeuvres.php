
	
	<div id="collectionOeuvres">
		<?php
			$cont=0;
			foreach($data as $oeuvres)
			{
				if($cont<10)
				{
					echo"<div id='{$oeuvres["id"]}'>
					<a href=' #'>
						<img class='photo' src='./images/{$oeuvres["urlImage"]}.jpg'alt='{$oeuvres["titre"]}'/>
					</a>
						<div class='hoverPhoto'>
							<span class='titreOeuvres'><a href=' #'>Titre: {$oeuvres["titre"]}</a></span>}
							<span class='nomArtistes'><a href=' #'>Artiste: {$oeuvres["nomArtiste"]}</a></span>
						</div>
					</div>";
					$cont++;
				}	
			}
		?>		
	</div>
		
</section>
<!--fin Section Oeuvres-->