<!--Debut Section des OEUVRES-->	
<section id="sectionOeuvres">
	
	<aside class ="menu oeuvres">
		<ul>
		 <li>Catégorie</li>
		 <li>lieux</li>
		 <li>artiste</li>
		</ul>
	</aside>
	
	<div id="collectionOeuvres">
		<?php
			foreach($data as $oeuvres)
			{
				echo"<div id='{$oeuvres["id"]}'>
                    <a href='#'>
                        <img class='photo' src='./images/{$oeuvres["urlImage"]}.jpg'/>
                        <div class='info'>
                            <span class='titreOeuvres'>Titre: {$oeuvres["titre"]}</span>
                            <span class='nomArtistes'>Artiste: {$oeuvres["nomArtiste"]}</span>
                        </div>
                    </a>
				</div>";	
			}

		?>	
		
	
	</div>
		
</section>
<!--fin Section Oeuvres-->