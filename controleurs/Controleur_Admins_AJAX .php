<?php
	class Controleur_Admins_AJAX extends Controleur_Admins        
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
					case "afficheListeFilms":						
						$this->afficheListeFilms();	
						break;						
					case "insereFilm":
						$modeleFilms = new Modele_Films();	
						if(isset($params["titre"]) && isset($params["description"]) && isset($params["idRealisateur"]))
						{
							$valide = $modeleFilms->insereFilm($params["titre"], $params["description"], $params["idRealisateur"] );
							if($valide)
							{									
								$this->afficheListeFilms();		
							}
							else
							{
								echo "ERROR";
							}
						}
						else
						{													
							echo "ERROR";
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