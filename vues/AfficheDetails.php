<div id="afficheDetails">
	<h1>Affichage des dtails de l'oeuvre</h1>
		<?php
			
			foreach($data as $detail)
			{
		?>
			<li>Titre : <?= $detail["titre"] ?></li>
		<?php
			}
		?>
	<!--<p>Description : <?//= $data["description"]?></p>	-->
</div>
