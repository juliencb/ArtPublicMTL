<?php
	class Controleur_Admins extends BaseControleur
	{	
		//la fonction qui sera appelée par le routeur
		public function traite(array $params)
		{				
            // vÃ©rifie s'il y a une action passÃ©e en paramÃªtre
			if(isset($params["action"]))
			{
				//modÃ¨le et vue vides par dÃ©faut
				$data = array();
				$vue = "";
				//switch en fonction de l'action qui nous est envoyÃ©e
				//ce switch dÃ©termine la vue $vue et obtient le modÃ¨le $data
				switch($params["action"])
				{			
                   // si l'action est "importation"
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
					//action par dÃ©faut
					echo "ERROR";					
			}			
		} // fin de la fonction traite
        
        public function importeOeuvreArtiste()
		{
            // 
			$modeleAdmins = new Modele_admins();
            
            // va chercher le JSON de la ville et le dÃ©code
			$fichierJSON = file_get_contents('http://donnees.ville.montreal.qc.ca/dataset/2980db3a-9eb4-4c0e-b7c6-a6584cb769c9/resource/18705524-c8a6-49a0-bca7-92f493e6d329/download/oeuvresdonneesouvertes.json');
			$fichierJSON_decode = JSON_decode($fichierJSON);
            
            //fait une boucle pour chacune des oeuvres du JSON
            $compteur = count($fichierJSON_decode);
			for($i = 0; $i < $compteur; $i++){
            
                // crÃ©e les variables Ã  utiliser
                $noInterneArtiste  =$fichierJSON_decode[$i]->Artistes[0]->NoInterne;
                $prenom            =$fichierJSON_decode[$i]->Artistes[0]->Prenom;
                $nom               =$fichierJSON_decode[$i]->Artistes[0]->Nom;
                $nomCollectif      =$fichierJSON_decode[$i]->Artistes[0]->NomCollectif;
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
                
                
                //insertion dans la table artiste
                $modeleAdmins->insereArtiste($noInterneArtiste, $nom, $prenom, $nomCollectif);
			  
                // insertion dans la table catÃ©gorie
                $modeleAdmins->insereCategorie($categorie);
                
                
                // insertion dans la table oeuvre
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
			} // fin de la boucle
               
		} // fin de la fonction importeOeuvreArtiste
		
		
		public function importeArrondissements()
		{
            // va chercher le fichier JSON des arrondissements de la ville de MontrÃ©al
			$modeleAdmins = new Modele_admins();
			$arron = file_get_contents('http://donnees.ville.montreal.qc.ca/dataset/00bd85eb-23aa-4669-8f1b-ba9a000e3dd8/resource/e9b0f927-8f75-458c-8fda-b5da65cc8b73/download/limadmin.json');
			$arron_decode = JSON_decode($arron);
			$compteur = count($arron_decode->features);
            // fait une boucle sur tous les arrondissements du JSON
			for($i = 0; $i < $compteur; $i++){
				$ville = $arron_decode->features[$i]->properties->NOM;
                
                // rempli la BD avec les arrondissements
				$modeleAdmins->insereArrondissement($ville);
			}	
		} // fin de la fonction importeArrondissements
		
		
		public function lienArtisteOeuvre()
		{
            // va chercher le fichier JSON des oeuvres publiques de la ville de MontrÃ©al
			$modeleAdmins = new Modele_admins();
			$fichierJSON = file_get_contents('http://donnees.ville.montreal.qc.ca/dataset/2980db3a-9eb4-4c0e-b7c6-a6584cb769c9/resource/18705524-c8a6-49a0-bca7-92f493e6d329/download/oeuvresdonneesouvertes.json');
			$fichierJSON_decode = JSON_decode($fichierJSON);
			$compteur = count($fichierJSON_decode);
            
            // fait la boucle sur tous les NoInterne du JSON des oeuvres et des artistes, 
			for($i = 0; $i < $compteur; $i++){
                
                //rempli les variables 
				$noInterneOeuvre	 =$fichierJSON_decode[$i]->NoInterne;
				$noInterneArtiste    =$fichierJSON_decode[$i]->Artistes[0]->NoInterne;
                
                // va chercher l'id de l'oeuvre d'aprÃ¨s son NoInterne
				$idOeuvre = $modeleAdmins->getIdSelonNoInterneO($noInterneOeuvre);
                // va chercher l'id de l'artiste d'aprÃ¨s son NoInterne
				$idArtiste = $modeleAdmins->getIdSelonNoInterneA($noInterneArtiste);
                //insÃ¨re les deux id retrouvÃ©s pour faire le lien
				$modeleAdmins->insereLiens($idOeuvre["id"], $idArtiste["id"]);
			}
		} // fin de la fonction lienArtisteOeuvre
		
	
		
	}
?>