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
					
					case "afficheListeOeuvres":						
						$this->afficheListeOeuvres();	
						//$this->afficheFormAjout();	
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
                    $this->afficheOptionSelectes();
					//$this->afficheOptionCategories();
				    //$this->afficheVue("pageAccueil",$data);					
			}
			
				
			//inclusion du footer dans le cas d'une requête qui n'est pas AJAX
			$this->afficheVue("footer");
		}
		
		public function afficheOptionSelectes()
		{
			$modeleArtistes = new Modele_Artistes();
			$donneArtiste = $modeleArtistes->obtenirTous();
			
            $modeleArrondissements = new Modele_Arrondissements();
			$donneArrondissement = $modeleArrondissements->obtenirTous();
            
            $modeleCategories = new Modele_Categories();
			$donneCategorie = $modeleCategories->obtenirTous();
            
           $data='<select id="categorie"><option>Recherche par catégorie</option>'; 
					/*foreach($donneCategorie as $categorie){
						echo '<option value="'.{$donneCategorie["nom"]}.'">'.{$donneCategorie["nom"]}.'</option>';
									
					}.'</select>';*/
           
           $this->afficheVue("pageAccueil",$data);	
          //  return $data;
            
		}
		
		
		public function afficheOptionArtistes()
		{
			$modeleArtistes = new Modele_Artistes();
			$data = $modeleArtistes->obtenirTous();
			//$this->afficheVue("FormAjoutFilmAjax", $data);	
		}
		
		public function afficheOptionArrondissements()
		{
			$modeleArrondissements = new Modele_Arrondissements();
			$data = $modeleArrondissements->obtenirTous();
            $this->afficheVue("pageAccueil", $data);	
			//$this->afficheVue("FormAjoutFilmAjax", $data);	
		}
		public function afficheOptionCategories()
		{
			$modeleCategories = new Modele_Categories();
			$data = $modeleCategories->obtenirTous();
			//return $data;
			//$this->afficheVue("pageAccueil", $data);	
		}
		
		///--fonction qui affiche la vue des oeuvres--///
		public function afficheListeOeuvres()
		{
			$modeleOeuvres= new Modele_Oeuvres();
			$data = $modeleOeuvres->obtenirTous();
			$this->afficheVue("vueOeuvres", $data);
		}
	}
?>