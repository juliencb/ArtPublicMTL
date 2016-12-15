<?php
class Controleur_ImportAjax extends Controleur_Import
	{	
		//la fonction qui sera appelée par le routeur
		public function traite(array $params)
		{				
            // vérifie s'il y a une action passÃ©e en paramÃªtre
			if(isset($params["action"]))
			{
				//modèle et vue vides par dÃ©faut
				$data = array();
				$vue = "";
				//switch en fonction de l'action qui nous est envoyÃ©e
				//ce switch détermine la vue $vue et obtient le modÃ¨le $data
				switch($params["action"])
				{			
                   // si l'action est "importation"
                    case "updateImport":
                        
                        $this->afficheVue("admin");	
                        $this->importationArtiste();
                        $this->importationOeuvres();
                        $this->importeArrondissements();
						break;
                    
					default:
						echo "ERROR";		
				}						
			}
			else
			{
					//action par dÃ©faut
					echo "ERROR";					
			}			
		} // fin de la fonction traite
        
      
       public function importationArtiste()
        {
            $modeleImport= new modele_import();
			
            $infoJSON = file_get_contents("http://localhost/ArtPublicMTL/js/oeuvresdonneesouvertes.json");
        
            $decodeJSON = json_decode($infoJSON);
            
          
            $compteur = count($decodeJSON);
        
			for($i = 0; $i < $compteur; $i++){
            
                // crée les variables à utiliser
                $noInterneArtiste  =$decodeJSON[$i]->Artistes[0]->NoInterne;
                $prenom            =$decodeJSON[$i]->Artistes[0]->Prenom;
                $nom               =$decodeJSON[$i]->Artistes[0]->Nom;
                $nomCollectif      =$decodeJSON[$i]->Artistes[0]->NomCollectif; 
         
               $modeleImport->insereArtiste($noInterneArtiste, $nom, $prenom, $nomCollectif);     
            }
            
            
        }
       public function importationOeuvres(){
            
            $modeleImport= new modele_import();
		
            $infoJSON = file_get_contents("http://localhost/ArtPublicMTL/js/oeuvresdonneesouvertes.json");
        
            $decodeJSON = json_decode($infoJSON);
            
             
            $compteur = count($decodeJSON);
       
			for($i = 0; $i < $compteur; $i++){
            
                // crée les variables à utiliser
                $noInterneArtiste  = $decodeJSON[$i]->Artistes[0]->NoInterne;
				$noInterne			 = $decodeJSON[$i]->NoInterne;
				$titre 				 = $decodeJSON[$i]->Titre;
				$titreVariante       = $decodeJSON[$i]->TitreVariante;
				$nomCollection       = $decodeJSON[$i]->NomCollection;
				$categorieObjet      = $decodeJSON[$i]->CategorieObjet;
				$categorie           = $decodeJSON[$i]->SousCategorieObjet;
				$modeAcquisition     = $decodeJSON[$i]->ModeAcquisition;
				$dateAccession       = $decodeJSON[$i]->DateAccession;
				$materiaux           = $decodeJSON[$i]->Materiaux;
				$support             = $decodeJSON[$i]->Support;
				$technique           = $decodeJSON[$i]->Technique;
				$dimensionsGenerales = $decodeJSON[$i]->DimensionsGenerales;
				$parc                = $decodeJSON[$i]->Parc;
				$batiment            = $decodeJSON[$i]->Batiment;
				$adresseCivique      = $decodeJSON[$i]->AdresseCivique;
				$coordonneeLatitude  = $decodeJSON[$i]->CoordonneeLatitude;
				$coordonneeLongitude = $decodeJSON[$i]->CoordonneeLongitude;
				$numeroAccession     = $decodeJSON[$i]->NumeroAccession;
				$arrondissement      = $decodeJSON[$i]->Arrondissement;
				$description         = "";
				$urlImage            = ""; 
                 
          
                $idArtiste = $modeleImport->getIdSelonNoInterneA($noInterneArtiste);
                
                $modeleImport->insereCategorie($categorie);         
            
             
                $modeleImport->insereOeuvre($noInterne, 
					$titre, 
					$titreVariante, 
					$nomCollection, 
					$categorieObjet, 
					$modeAcquisition, 
					$dateAccession, 
					$materiaux, 
					$support, 
					$technique, 
					$dimensionsGenerales, 
					$parc, 
					$batiment, 
					$adresseCivique, 
					$coordonneeLatitude, 
					$coordonneeLongitude, 
					$numeroAccession, 
					$description, 
					$urlImage,
                    $categorie,
                    $arrondissement,
                    $idArtiste['id']);
                 
            }
        }
        public function importeArrondissements()
		{
            // va chercher le fichier JSON des arrondissements de la ville dhttp://localhost/ArtPublicMTL/js/oeuvresdonneesouvertes.jsone MontrÃ©al
			$modeleImport = new Modele_import();
			$arron = file_get_contents('http://localhost/ArtPublicMTL/js/limadmin.json');
           
			$decodeArron = JSON_decode($arron);
          
			$compteur = count($decodeArron->features);
         
            // fait une boucle sur tous les arrondissements du JSON
			for($i = 0; $i < $compteur; $i++){
				$ville = $decodeArron->features[$i]->properties->NOM;
         
                // rempli la BD avec les arrondissements
				$modeleImport->insereArrondissement($ville);
			}
		} // fin de la fonction importeArrondissement

    }
?>