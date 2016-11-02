<?php
	class Controleur_Usagers extends BaseControleur
	{
	
		//la fonction qui sera appelée par le routeur
		public function traite(array $params)
		{
			//affichage du header
			$this->afficheVue("header");
			
			if(isset($params["action"]))
			{
				//modèle et vue vides par défaut
				$vue = "";
				//switch en fonction de l'action qui nous est envoyée
				//ce switch détermine la vue $vue et obtient le modèle $data
				switch($params["action"])
				{
					
					case "afficheListeFilms":						
						$this->afficheListeFilms();	
						$this->afficheFormAjout();	
						break;
										
					default:
						$this->afficheListeFilms();		
						$this->afficheFormAjout();							
				}					
			}
			else
			{
					//actions par défaut
					$this->afficheListeFilms();		
					$this->afficheFormAjout();		
			}
			
				
			//inclusion du footer dans le cas d'une requête qui n'est pas AJAX
			$this->afficheVue("footer");
		}
		
		
		
		public function afficheFormAjout()
		{
			$modeleRealisateurs = new Modele_Realisateurs();
			$data = $modeleRealisateurs->obtenirTous();
			$this->afficheVue("FormAjoutFilmAjax", $data);	
		}
	}
?>