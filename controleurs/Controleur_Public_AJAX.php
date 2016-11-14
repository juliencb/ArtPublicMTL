<?php
	class Controleur_Public_AJAX extends Controleur_Public{	
		//la fonction qui sera appelée par le routeur
		public function traite(array $params){				
			if(isset($params["action"]))
			{
				//modèle et vue vides par défaut
				$data = array();
				$vue = "";
				//switch en fonction de l'action qui nous est envoyée
				//ce switch détermine la vue $vue et obtient le modèle $data
				switch($params["action"])
				{
					case "recherche":
						if(isset($params["recherche"])){
							//Verification si les champs sont remplis;
						$this->recherche($params["recherche"]);		
						}
						else{
							echo "ERROR Aucune valeur de recherche";
						}
						
						break;						
									
					default:
						echo "ERROR";		
				}						
			}
			else{
					//action par défaut
					echo "ERROR";					
			}			
		}

		public function recherche($strRecherche){
			$modelePublic = new Modele_public();
			$resultatsRecherche = $modelePublic->recherche($strRecherche);
			echo "<resultatsRecherche>";

	       foreach($resultatsRecherche as $r){
				//générer le XML du contact
				echo "<resultatRecherche>";
				echo "<id>" . $r["id"] . "</id>";
				echo "<resultat>" . $r["resultat"] . "</resultat>";
				echo "</resultatRecherche>";
			}
	
			echo "</resultatsRecherche>";
			
		}
	}
?>