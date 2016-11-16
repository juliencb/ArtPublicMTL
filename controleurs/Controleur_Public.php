<?php
	class Controleur_Public extends BaseControleur{
	
		//la fonction qui sera appelée par le routeur
		public function traite(array $params){
			//affichage du header
			$this->afficheVue("header");
			
			if(isset($params["action"])){
				//modèle et vue vides par défaut
				$vue = "";
				//switch en fonction de l'action qui nous est envoyée
				//ce switch détermine la vue $vue et obtient le modèle $data
				switch($params["action"]){
					
					case "pageAccueil":					
						$this->afficheVue("pageAccueil","");	
						$this->afficheRecherche();	
						break;
						
						
					case "listeOeuvres":
					    $this->afficheListeCateogires();					
						$this->afficheListeArrondissements();					
						$this->afficheListeOeuvres();	
						$this->afficheRecherche();
						break;
						
					case "listeArtiste":
						//$this->afficheArtiste();
						$this->afficheRecherche();
					    echo "Presentation de l'artiste: " . $params["nom"] . " sera presente";
					    break;
					
					case "oeuvre":
						$this->afficheRecherche();
					   // echo "Presentation de loeuvre pour: " . $params["titre"] . " sera presente";
						break;
					
					case "afficheDetails":
						if(isset($params["id"])){
							$this->afficheDetails($params["id"]);	
						
						}
					
							
						break;
										
					default:

						$this->afficheDetails($params["id"]);		
											

					case "soumission":
						$this->afficheRecherche();
						$this->afficheSoumission();
						break;
					//default:
												
				}
				
			}
			else{
					//actions par défaut
					$this->afficheVue("pageAccueil","");	
					$this->afficheRecherche();	
			}
			
				
			//inclusion du footer dans le cas d'une requête qui n'est pas AJAX
			$this->afficheVue("footer");
		}
		
		
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
		
		public function afficheSoumission(){
			$this->afficheVue("formSoumission", "");
		}

		///--fonction permet d'affiche la liste des arrondissements--///
		public function afficheListeArrondissements()
		{
			$modeleArrondissements= new Modele_Arrondissements();
			$data= $modeleArrondissements->obtenirTous();
			$this->afficheVue("vueOptionArrondissement", $data);
		}
		
		public function afficheRecherche(){
			$this->afficheVue("recherche", "");	
		}

		public function afficheDetails($id)
		{ 
			$modelePublic = new Modele_public();
			$data = $modelePublic->nomOeuvre($id);
			$this->afficheVue("AfficheDetails", $data);

		}

	}
?>