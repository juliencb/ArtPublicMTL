<?php
	class Controleur_Usagers extends BaseControleur
	{
	

		///--la fonction qui sera appelée par le routeur--///

		public function traite(array $params)
		{
			///--affichage du header--///
			$this->afficheVue("header");
			
			if(isset($params["action"]))
			{
				///--modÃ¨le et vue vides par dÃ©faut--///
				$vue = "";
				//--switch en fonction de l'action qui nous est envoyÃ©e--//
				///--ce switch dÃ©termine la vue $vue et obtient le modÃ¨le $data--///
				switch($params["action"])
				{
					///--cette action permet d'afficher la liste de tous les oeuvres avec le nom de artiste--///
					case "afficheListeOeuvres":
						$this->afficheListeCateogires();					
						$this->afficheListeArrondissements();					
						$this->afficheListeOeuvres();
											
						break;
										
					default:
						$this->afficheListeOeuvres();		
	
				}
				
				
			}
			else
			{
					///--actions par dÃ©faut--///
				    $this->afficheVue("pageAccueil","");					
			}
			
				
			///--inclusion du footer dans le cas d'une requÃªte qui n'est pas AJAX--///
			$this->afficheVue("footer");
		}
		
		///--fonction qui affiche la vue des oeuvres avec le nom de l'artiste--///
		public function afficheListeOeuvres()
		{
			$modeleOeuvres= new Modele_Oeuvres();
			$data = $modeleOeuvres->obtenirTousOeuvresArtistes();
			$this->afficheVue("vueOeuvres", $data);
		}
		
		///--fonction permet d'affiche la liste des categories--///	
		public function afficheListeCateogires()
		{
			$modeleCategories= new Modele_Categories();
			$data = $modeleCategories->obtenirTous();
			$this->afficheVue("vueOptionCategories", $data);
		}
		
		///--fonction permet d'affiche la liste des arrondissements--///
		public function afficheListeArrondissements()
		{
			$modeleArrondissements= new Modele_Arrondissements();
			$data= $modeleArrondissements->obtenirTous();
			$this->afficheVue("vueOptionArrondissement", $data);
		}
	}
?>