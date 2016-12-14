<<<<<<< HEAD

		 <select id="arrondissements">

			<option value="_">Lieu</option>

=======
﻿		 <select id="arrondissements">
			<option>Lieu</option>
>>>>>>> origin/master
			<?php 
				foreach($data as $arrondissement){
				echo"<option value='{$arrondissement["nom"]}'>{$arrondissement["nom"]}</option>";
				}

			?>
		 </select>
	</aside>
	

<!--fin menu PAGE OEUVRES-->	

