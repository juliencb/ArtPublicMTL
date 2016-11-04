<!--Debut Section des OEUVRES-->	
<section id="sectionOeuvres">
	
	<aside class ="menu oeuvres">
	</aside>
	
	<div id="collectionOeuvres">
		<?php
			foreach($data as $oeuvres)
			{
				echo"<div id='{$oeuvres["id"]}'>
				<a href='#'>
					<img class=photo src='./images/{$oeuvres["urlImage"]}.jpg'/>
					<div class='info'>
						<span class='titreOeuvres'>Titre Oeuvre: {$oeuvres["titre"]}</span>
						<span class='nomArtistes'>Nom Artiste: {$oeuvres["titre"]}</span>
					</div>
				</a>
				</div>";	
			}

		?>	
		
	
	</div>
		
</section>
<!--fin Section Oeuvres-->