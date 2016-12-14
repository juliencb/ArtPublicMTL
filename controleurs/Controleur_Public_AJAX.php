<?php
<<<<<<< HEAD
	class Controleur_Public_AJAX extends Controleur_Public
	{	
		//la fonction qui sera appelée par le routeur
		public function traite(array $params)
		{				
=======
	class Controleur_Public_AJAX extends Controleur_Public{	
		//la fonction qui sera appelée par le routeur
		public function traite(array $params){				
>>>>>>> origin/master
			if(isset($params["action"]))
			{
				//modèle et vue vides par défaut
				$data = array();
				$vue = "";
				//switch en fonction de l'action qui nous est envoyée
				//ce switch détermine la vue $vue et obtient le modèle $data
				switch($params["action"])
				{	
					case "afficheOeuvrescategorie":
						$modeleOeuvres= new Modele_Oeuvres();
						if(isset($params["id"])&&($params["id"])=="categorie" && isset($params["idValue"]))
						{
							$data=$modeleOeuvres-> obtenirOeuvresCategorie($params["idValue"]);
							$this->afficheVue("header");
							$this->afficheListeCategories();					
							$this->afficheListeArrondissements();
							$this->afficheRecherche();
							$this->afficheVue("vueOeuvres", $data);
							$this->afficheVue("footer");
						}
						
						else if(isset($params["idValue"]) && ($params["idValue"])!="")
						{   
							if(($params["idValue"])=="_")
							{
								$this->afficheListeOeuvres();
								
							}
							else
							{
								$data=$modeleOeuvres-> obtenirOeuvresCategorie($params["idValue"]);
								$this->afficheVue("vueOeuvres", $data);		
							}
							
						}
					break;
				
					case "afficheOeuvreslieu":
						$modeleOeuvres= new Modele_Oeuvres();
						if(isset($params["id"])&&($params["id"])=="lieu" && isset($params["idValue"]))
						{
							$data=$modeleOeuvres-> obtenirOeuvresArrondissement($params["idValue"]);
							$this->afficheVue("header");
							$this->afficheListeCategories();					
							$this->afficheListeArrondissements();
							$this->afficheRecherche();
							$this->afficheVue("vueOeuvres", $data);
							$this->afficheVue("footer");
						}
						else if(isset($params["idValue"])&& ($params["idValue"])!="")
						{
							if(($params["idValue"])=="_")
							{
								$this->afficheListeOeuvres();
							}
							else
							{ 
								$data=$modeleOeuvres-> obtenirOeuvresArrondissement($params["idValue"]);
								$this->afficheVue("vueOeuvres", $data);
							}
						}
						
					break;
	
					case "recherche":
					
						if(isset($params["recherche"])){
							
							//Verification si les champs sont remplis;
							$this->recherche($params["recherche"]);		
						}
						else{
							echo "ERROR Aucune valeur de recherche";
						}
				
						break;	

					case "telechargementImage":
						$this->telechargementImage();
						break;	
									
					default:
						echo "ERROR";		
				}						
			}
			else{
					//action par défaut
					echo "ERROR";					
			}			
		}


		public function recherche($strRecherche){
			$modelePublic = new Modele_public();
			$resultatsRecherche = $modelePublic->recherche($strRecherche);

			echo "<resultatsRecherche>";

	       foreach($resultatsRecherche as $r){
<<<<<<< HEAD
				//le XML du contact
=======
				//générer le XML du contact
>>>>>>> origin/master
				echo "<resultatRecherche>";
				echo "<id>" . $r["id"] . "</id>";
				echo "<resultat>" . $r["resultat"] . "</resultat>";

				echo "</resultatRecherche>";
			}
	
			echo "</resultatsRecherche>";
			
		}

		
		public function telechargementImage(){
			if ( 0 < $_FILES['file']['error'] ) {
				echo 'Error: ' . $_FILES['file']['error'] . '<br>';
			}
			else {
				// generation du nom du fichier
				//$nomDuFichier = 'uploads/' . $_FILES['file']['name'];
				$nomDuFichier = '../images/img' . uniqid() . '-' . $_FILES['file']['name'];
				
				move_uploaded_file(
					 // this is where the file is temporarily stored on the server when uploaded
					// do not change this
					$_FILES['file']['tmp_name'],

					// this is where you want to put the file and what you want to name it
					// in this case we are putting in a directory called "uploads"
					// and giving it the original filename
					//'uploads/' . $_FILES['file']['name']
					$nomDuFichier
				);
				
				echo $nomDuFichier;
			}

		}
		

	}
?>