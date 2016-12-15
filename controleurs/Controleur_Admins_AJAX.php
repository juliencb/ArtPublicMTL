<?php
	class Controleur_Admins_AJAX extends Controleur_Admins {	
		//la fonction qui sera appelée par le routeur
		public function traite(array $params){				
			if(isset($params["action"])){
				//modèle et vue vides par défaut
				$data = array();
				$vue = "";
				//switch en fonction de l'action qui nous est envoyée
				//ce switch détermine la vue $vue et obtient le modèle $data
				switch($params["action"]){
					case "supprimerOeuvre":						
						$modeleOeuvres= new Modele_Oeuvres();
			            $msg= $modeleOeuvres->supprimerOeuvre($params["id"]);
						echo $msg;	
						break;												
					default:
						echo "Action invalide";		
				}						
			}
			else{
                //action par défaut
                echo "Action requise";					
			}			
		}	
	}
?>