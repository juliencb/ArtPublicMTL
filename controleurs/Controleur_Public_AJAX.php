<?php
	class Controleur_Public_AJAX extends Controleur_Public
	{	
		//la fonction qui sera appelée par le routeur
		public function traite(array $params)
		{				
			if(isset($params["action"]))
			{
				//modèle et vue vides par défaut
				$data = array();
				$vue = "";
				//switch en fonction de l'action qui nous est envoyée
				//ce switch détermine la vue $vue et obtient le modèle $data
				switch($params["action"])
				{	
					case "afficheOeuvresCategorie":
						$modeleOeuvres= new Modele_Oeuvres();
						if(isset($params["categorie"]) && ($params["categorie"])!="")
						{   
							if(($params["categorie"])=="_")
							{
								$this->afficheListeOeuvres();
							}
							else
							{
								$data=$modeleOeuvres-> obtenirOeuvresCategorie($params["categorie"]);
								$this->afficheVue("vueOeuvres", $data);		
							}
							
						}
					break;
				
				case "afficheOeuvresArrondissement":
						$modeleOeuvres= new Modele_Oeuvres();
						if(isset($params["arrondissement"])&& ($params["arrondissement"])!="")
						{
							if(($params["arrondissement"])=="_")
							{
								$this->afficheListeOeuvres();
							}
							else
							{ 
								$data=$modeleOeuvres-> obtenirOeuvresArrondissement($params["arrondissement"]);
								$this->afficheVue("vueOeuvres", $data);
							}
						}
						
					break;

				
					default:
						echo "ERROR";		
				}						
			}
			else
			{
					//action par défaut
					echo "ERROR";					
			}			
		}	
	}
?>