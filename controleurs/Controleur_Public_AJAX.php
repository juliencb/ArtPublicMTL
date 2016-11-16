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
					//action par d�faut
					echo "ERROR";					
			}			
		}


		public function recherche($strRecherche){
			$modelePublic = new Modele_public();
			$resultatsRecherche = $modelePublic->recherche($strRecherche);
			echo "<resultatsRecherche>";

	       foreach($resultatsRecherche as $r){
				//g�n�rer le XML du contact
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