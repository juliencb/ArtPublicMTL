		 <select id="arrondissements">
			<option>Lieu</option>
			<?php 
				foreach($data as $arrondissement){
				echo"<option value='{$arrondissement["nom"]}'>{$arrondissement["nom"]}</option>";
				}

			?>
		 </select>
	</aside>
	
<!--FIN MENU OEUVRES-->	