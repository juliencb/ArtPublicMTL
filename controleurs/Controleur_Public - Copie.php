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
				//ce switch d�termine la vue $vue et obtient le modèle $data
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
						
					case "afficheListeArtistes":
						$this->afficheListeArtistes();
						break;
						
                    case "afficheListeArtistesParLettre":
						$this->afficheListeArtistesParLettre($params["lettre"],"nom");
						break;
						
					case "afficheDescription":
						$this->afficheDescriptionArtiste($params["id"], "id");
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
		
		public function afficheRecherche(){
			$this->afficheVue("recherche", "");	
		}
		
		//afficher la liste des artistes
		public function afficheListeArtistes()
		{
			$modeleArtiste = new Modele_artistes();
			$data = $modeleArtiste->obtenirTous();
			$this->afficheVue("vueArtistes", $data);	
		}
                
        public function afficheListeArtistesParLettre($params,$val)
		{
			$modeleArtiste = new Modele_artistes();
			$data = $modeleArtiste->obtenirTousArtistes($params, $val);
			$this->afficheVue("vueArtistes", $data);	
		}
		
		//afficher la description d'un artiste
		public function afficheDescriptionArtiste($params){
			$modeleArtiste = new Modele_artistes();
			$data = $modeleArtiste->obtenirDescriptionArtiste($params, $val);
			//$this->afficheVue("vueArtistes", $data);
			$this->afficheVue("vueArtistes", $modeleArtiste->obtenirTous(), $data);
		}
		
	}
?>