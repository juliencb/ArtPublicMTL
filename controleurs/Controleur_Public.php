<?php
	class Controleur_Public extends BaseControleur{
	
		//la fonction qui sera appelée par le routeur
<<<<<<< HEAD

=======
>>>>>>> origin/master
		public function traite(array $params){
			//affichage du header
			$this->afficheVue("head");
			$this->afficheVue("header");
			
			if(isset($params["action"])){
				//modèle et vue vides par défaut
				$vue = "";
				//switch en fonction de l'action qui nous est envoyée
				//ce switch détermine la vue $vue et obtient le modèle $data
<<<<<<< HEAD

=======
>>>>>>> origin/master
				switch($params["action"]){
					
					case "pageAccueil":					
						$this->afficheVue("pageAccueil","");	
						$this->afficheRecherche();	
						break;

					case "listeOeuvres":
					    $this->afficheListeCategories();					
<<<<<<< HEAD
						$this->afficheListeArrondissements();
						$this->afficheRecherche();						
						$this->afficheListeOeuvres();		
=======
						$this->afficheListeArrondissements();					
						$this->afficheListeOeuvres();	
						$this->afficheRecherche();
>>>>>>> origin/master
						break;
						
					case "listeArtistes":
						$this->afficheListeArtistes();
						$this->afficheRecherche();   
					    break;
					
					case "oeuvre":
						$this->afficheRecherche();
					 	break;

				
					case "descriptionArtiste":
						if(isset($params["id"])){
							$this->afficheDescriptionArtiste($params["id"]);
							$this->afficheOeuvresArtiste($params["id"]);
						}
						break;
									
					case "soumission":
						$this->afficheRecherche();
						$this->afficheSoumission();
						break;					
					
					case "details":
						if(isset($params["id"])){
							$this->afficheRecherche();
							$this->afficheDetails($params["id"]);	
						}	
						break;
					
					default:
						$this->afficheVue("pageAccueil","");	
						$this->afficheRecherche();	
				}
			}
			else{
<<<<<<< HEAD
				//actions par défaut
				$this->afficheVue("pageAccueil","");	
				$this->afficheRecherche();	
			}

=======
					//actions par défaut
					$this->afficheVue("pageAccueil","");	
					$this->afficheRecherche();	
			}
			
				
>>>>>>> origin/master
			//inclusion du footer dans le cas d'une requête qui n'est pas AJAX
			$this->afficheVue("footer");
		}
		
		
		public function afficheListeOeuvres()
		{
			$modeleOeuvres= new Modele_Oeuvres();
			$data = $modeleOeuvres->obtenirTousOeuvresArtistes();
			$this->afficheVue("vueOeuvres", $data);
		}
		
<<<<<<< HEAD
		///--fonction permet d'affiche la liste des categories--///	
=======
>>>>>>> origin/master
		public function afficheListeCategories()
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
		
		//afficher la liste des artistes
		public function afficheListeArtistes()
		{
			$modeleArtiste = new Modele_artistes();
			$data = $modeleArtiste->obtenirTousArtisteAlphabetique();
			/*foreach ($data as $artiste){
				if($artiste["nomCollectif"] == NULL){
					$artiste["nomCollectif"] = "";
					$artiste["nomCollectif"] = $artiste["nom"] . $artiste["nomCollectif"];
				}
				
			}*/
			$this->afficheVue("vueArtistes", $data);	
		}

		//afficher la description d'un artiste
		public function afficheDescriptionArtiste($id){
			$modeleArtiste = new Modele_artistes();
			$data = $modeleArtiste->obtenirDescriptionArtiste($id);
			$this->afficheVue("vueDescriptionArtiste", $data);
		}

		//afficher l'oeuvre d'un artiste
		public function afficheOeuvresArtiste($id){
			$modeleArtiste = new Modele_artistes();
			$data = $modeleArtiste->obtenirOeuvresArtiste($id);
			$this->afficheVue("vueOeuvresArtiste", $data);
			//var_dump($data["urlImage"]);
		}


		public function afficheDetails($id)
		{ 
			$modelePublic = new Modele_public();
			$data = $modelePublic->nomOeuvre($id);
			$this->afficheVue("AfficheDetails", $data);

		}

	}
?>