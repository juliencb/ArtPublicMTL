<?php
	class Controleur_Usagers extends BaseControleur
	{
	
		//la fonction qui sera appelée par le routeur
		public function traite(array $params)
		{
			//affichage du header
			//$this->afficheVue("header");
			
			if(isset($params["action"]))
			{
				//modèle et vue vides par défaut
				$vue = "";
				//switch en fonction de l'action qui nous est envoyée
				//ce switch détermine la vue $vue et obtient le modèle $data
				switch($params["action"])
				{
					
					case "afficheDetails":						
						$this->afficheDetails();	
							
						break;
										
					default:
						$this->afficheDetails();		
											
				}					
			}
			else
			{
					//actions par défaut
					//$this->afficheDetails();			
					//$this->afficheFormAjout();*/		
			}
			
				
			//inclusion du footer dans le cas d'une requête qui n'est pas AJAX
			//$this->afficheVue("footer");
		}
		
		
		
		public function afficheDetails()
		{
			$modeleUsagers = new Modele_Usagers();
			$data = $modeleUsagers->obtenirTous();
			$this->afficheVue("AfficheDetails", $data);	
		}
	}
?>