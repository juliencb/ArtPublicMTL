<?php
	class Controleur_Admins extends BaseControleur
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
                   
                    case "importation":
						$this->importeArrondissements();
						$this->importeOeuvreArtiste();
						$this->lienArtisteOeuvre();
						break;									  
					default:
						echo "ERROR";		
				}						
			}
			else
			{
					//action par défaut
					echo "ERROR";					
			}			
		} // fin de la fonction traite
        
        public function importeOeuvreArtiste()
		{
			$modeleAdmins = new Modele_admins();
			$fichierJSON = file_get_contents('http://donnees.ville.montreal.qc.ca/dataset/2980db3a-9eb4-4c0e-b7c6-a6584cb769c9/resource/18705524-c8a6-49a0-bca7-92f493e6d329/download/oeuvresdonneesouvertes.json');
			$fichierJSON_decode = JSON_decode($fichierJSON);
            
            
            $compteur = count($fichierJSON_decode);
			for($i = 0; $i < $compteur; $i++){
            
            //table artiste
            $noInterneArtiste  =$fichierJSON_decode[$i]->Artistes[0]->NoInterne;
            $prenom            =$fichierJSON_decode[$i]->Artistes[0]->Prenom;
            $nom               =$fichierJSON_decode[$i]->Artistes[0]->Nom;
            $nomCollectif      =$fichierJSON_decode[$i]->Artistes[0]->NomCollectif;
            $modeleAdmins->insereArtiste($noInterneArtiste, $nom, $prenom, $nomCollectif);

            
				$noInterne			 = $fichierJSON_decode[$i]->NoInterne;
				$titre 				 = $fichierJSON_decode[$i]->Titre;
				$titreVariante       = $fichierJSON_decode[$i]->TitreVariante;
				$nomCollection       = $fichierJSON_decode[$i]->NomCollection;
				$categorieObjet      = $fichierJSON_decode[$i]->CategorieObjet;
				$categorie           = $fichierJSON_decode[$i]->SousCategorieObjet;
				$modeAcquisition     = $fichierJSON_decode[$i]->ModeAcquisition;
				$dateAccession       = $fichierJSON_decode[$i]->DateAccession;
				$materiaux           = $fichierJSON_decode[$i]->Materiaux;
				$support             = $fichierJSON_decode[$i]->Support;
				$technique           = $fichierJSON_decode[$i]->Technique;
				$dimensionsGenerales = $fichierJSON_decode[$i]->DimensionsGenerales;
				$parc                = $fichierJSON_decode[$i]->Parc;
				$batiment            = $fichierJSON_decode[$i]->Batiment;
				$adresseCivique      = $fichierJSON_decode[$i]->AdresseCivique;
				$coordonneeLatitude  = $fichierJSON_decode[$i]->CoordonneeLatitude;
				$coordonneeLongitude = $fichierJSON_decode[$i]->CoordonneeLongitude;
				$numeroAccession     = $fichierJSON_decode[$i]->NumeroAccession;
				$arrondissement      = $fichierJSON_decode[$i]->Arrondissement;
				$description         = "";
				$urlImage            = "";
			  
                //table catégorie
                $modeleAdmins->insereCategorie($categorie);
                
                
                // table oeuvre, APRÈS la table catégorie et la table arrondissement
				$modeleAdmins->insereOeuvre( 
					$noInterne, 
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
                    $arrondissement
				);
				
				//table artiste
                 $noInterneArtiste  =$fichierJSON_decode[$i]->Artistes[0]->NoInterne;
				 $prenom            =$fichierJSON_decode[$i]->Artistes[0]->Prenom;
				 $nom               =$fichierJSON_decode[$i]->Artistes[0]->Nom;
				 $nomCollectif      =$fichierJSON_decode[$i]->Artistes[0]->NomCollectif;
				 $modeleAdmins->insereArtiste($noInterneArtiste, $nom, $prenom, $nomCollectif);
              
                 
                
			}
               
		} // fin de la fonction importeOeuvreArtiste
		
		
		public function importeArrondissements()
		{
			$modeleAdmins = new Modele_admins();
			$arron = file_get_contents('http://donnees.ville.montreal.qc.ca/dataset/00bd85eb-23aa-4669-8f1b-ba9a000e3dd8/resource/e9b0f927-8f75-458c-8fda-b5da65cc8b73/download/limadmin.json');
			$arron_decode = JSON_decode($arron);
			$compteur = count($arron_decode->features);
			for($i = 0; $i < $compteur; $i++){
				$ville = $arron_decode->features[$i]->properties->NOM;
				$modeleAdmins->insereArrondissement($ville);
			}	
		} // fin de la fonction importeArrondissements
		
		
		public function lienArtisteOeuvre()
		{
			$modeleAdmins = new Modele_admins();
			$fichierJSON = file_get_contents('http://donnees.ville.montreal.qc.ca/dataset/2980db3a-9eb4-4c0e-b7c6-a6584cb769c9/resource/18705524-c8a6-49a0-bca7-92f493e6d329/download/oeuvresdonneesouvertes.json');
			$fichierJSON_decode = JSON_decode($fichierJSON);
			$compteur = count($fichierJSON_decode);
			for($i = 0; $i < $compteur; $i++){
				$noInterneOeuvre	 =$fichierJSON_decode[$i]->NoInterne;
				$noInterneArtiste    =$fichierJSON_decode[$i]->Artistes[0]->NoInterne;
				$idOeuvre = $modeleAdmins->getIdSelonNoInterneO($noInterneOeuvre);
				$idArtiste = $modeleAdmins->getIdSelonNoInterneA($noInterneArtiste);			
				$modeleAdmins->insereLiens($idOeuvre["id"], $idArtiste["id"]);
			}
		} // fin de la fonction lienArtisteOeuvre
		
	
		
	}
?>