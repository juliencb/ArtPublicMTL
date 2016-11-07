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
					//cette action permet d'afficher la liste de tous les oeuvres avec le nom de artiste
					case "afficheListeOeuvres":						
						$this->afficheListeOeuvres();	
						break;
										
					default:
						$this->afficheListeOeuvres();		
						//$this->afficheFormAjout();
	
				}
					
			}
			else
			{
					//actions par défaut
					//$this->afficheOptionArtistes();		
					//$this->afficheOptionArrondissements();
                    //$this->afficheOptionSelectes();
					//$this->afficheOptionCategories();
				    //$this->afficheVue("pageAccueil",$data);					
			}
			
				
			//inclusion du footer dans le cas d'une requête qui n'est pas AJAX
			$this->afficheVue("footer");
		}
		
		///--fonction qui affiche la vue des oeuvres avec le nom de l'artiste--///
		public function afficheListeOeuvres()
		{
			$modeleOeuvres= new Modele_Oeuvres();
			$data = $modeleOeuvres->obtenirTousOeuvresArtistes();
			$this->afficheVue("vueOeuvres", $data);
		}
		
		
	}
?>