
		 <select id="arrondissements">

			<option value="_">Lieu</option>

			<?php 
				foreach($data as $arrondissement){
				echo"<option value='{$arrondissement["nom"]}'>{$arrondissement["nom"]}</option>";
				}

			?>
		 </select>
	</aside>
	

<!--fin menu PAGE OEUVRES-->	

