<?php
   
class Modele_import extends TemplateDAO
{
  
    public function getTable()
		{
            
            
			return "admins";
		}
    
       public function insereOeuvre($noInterne, 
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
                                     $idArtiste
                                     )
		{		
			
            try
		      {
				$stmt = $this->connexion->prepare("INSERT INTO oeuvre 
                (noInterne, 
                titre, titreVariante, 
                nomCollection, 
                categorieObjet, 
                modeAcquisition, 
                dateAccession, 
                materiaux, 
                support,
                technique, 
                dimensionsGenerales, 
                parc, 
                batiment, 
                adresseCivique, 
                coordonneeLatitude,
                coordonneeLongitude, 
                numeroAccession,
                description, 
                urlImage, 
                categorie,
                arrondissement, 
                idArtiste)
                VALUES (:noInterne, 
                :titre, 
                :titreVariante, 
                :nomCollection,
                :categorieObjet,
                :modeAcquisition,
                :dateAccession, 
                :materiaux,
                :support,
                :technique, 
                :dimensionsGenerales, 
                :parc, 
                :batiment, 
                :adresseCivique,
                :coordonneeLatitude,
                :coordonneeLongitude, 
                :numeroAccession, 
                :description,
                :urlImage,
                :categorie, 
                :arrondissement, 
                :idArtiste)
                ON DUPLICATE KEY UPDATE
                noInterne = :noInterne, 
                titre = :titre, 
                titreVariante = :titreVariante, 
                nomCollection = :nomCollection,
                categorieObjet = :categorieObjet, 
                modeAcquisition = :modeAcquisition,
                dateAccession =:dateAccession,
                materiaux = :materiaux,
                support = :support,
                technique =:technique,
                dimensionsGenerales = :dimensionsGenerales,
                parc = :parc,
                batiment = :batiment,
                adresseCivique = :adresseCivique,
                coordonneeLatitude = :coordonneeLatitude,
                coordonneeLongitude  = :coordonneeLongitude, 
                numeroAccession  = :numeroAccession, 
                description = :description,
                urlImage = :urlImage,
                categorie = :categorie, 
                arrondissement = :arrondissement, 
                idArtiste = :idArtiste"
                                                 );
              
               
         $stmt->execute(array(
                                    ":noInterne" => $noInterne, 
                                     ":titre" => $titre, 
                                     ":titreVariante" => $titreVariante, 
                                     ":nomCollection" => $nomCollection, 
                                     ":categorieObjet" => $categorieObjet, 
                                     ":modeAcquisition" => $modeAcquisition, 
                                     ":dateAccession" => $dateAccession, 
                                     ":materiaux" => $materiaux,  
                                     ":support" => $support, 
                                     ":technique" => $technique, 
                                     ":dimensionsGenerales" => $dimensionsGenerales, 
                                     ":parc" => $parc, 
                                     ":batiment" => $batiment, 
                                     ":adresseCivique" => $adresseCivique, 
                                     ":coordonneeLatitude" => $coordonneeLatitude, 
                                     ":coordonneeLongitude" => $coordonneeLongitude, 
                                     ":numeroAccession" => $numeroAccession, 
                                     ":description" => $description, 
                                     ":urlImage" => $urlImage,
                                     ":categorie" => $categorie,
                                     ":arrondissement" => $arrondissement,
                                     ":idArtiste" => $idArtiste
                                     
                                     ));
              
             
				return 1;
                 
          
			}	
			catch(Exception $exc)
			{
				
                return 0;
			}
		}
     /*   public function updateArtiste($noInterne, $nom, $prenom, $nomCollectif)
        {
            try
            {
                
            $stmt = $this->connexion->prepare("UPDATE artiste SET `nom`= :nom,`prenom`= :prenom,`nomCollectif`=[value-5],`biographie`=[value-6],`valide`=[value-7] WHERE noInterne = :noInterne");
            }
            	 $stmt->execute(array(":noInterne" => $noInterne, 
                                     ":nom" => $nom, 
                                     ":prenom" => $prenom, 
                                     ":nomCollectif" => $nomCollectif
                                ));
                return 1;
		
			}	
			catch(Exception $exc)
			{
				return 0;
			}
            
        }*/
        
        //insère un artiste dans la table artiste
       public function insereArtiste($noInterne, $nom, $prenom, $nomCollectif) 
		{	
			try
			{
             
				$stmt = $this->connexion->prepare("INSERT INTO artiste (noInterne, nom, prenom, nomCollectif) VALUES (:noInterne, :nom, :prenom, :nomCollectif) ON DUPLICATE KEY UPDATE noInterne = :noInterne, nom = :nom, prenom = :prenom, nomCollectif =:nomCollectif ");
                
			 $stmt->execute(array(":noInterne" => $noInterne, 
                                     ":nom" => $nom, 
                                     ":prenom" => $prenom, 
                                     ":nomCollectif" => $nomCollectif
                                ));
                return 1;
		
			}	
			catch(Exception $exc)
			{
				return 0;
			}
             
		}
       public function insereCategorie($nom) 
		{		
			try
			{
				$stmt = $this->connexion->prepare("INSERT INTO `categorie` ( `nom`) VALUES (:nom)");
              
				 $stmt->execute(array(":nom" => $nom));
             
				return 1;
			}	
			catch(Exception $exc)
			{
				return 0;
                die($exc->getMessage());
			}
		}
        public function insereArrondissement($nom) 
		{		
			try
			{
				$stmt = $this->connexion->prepare("INSERT INTO `arrondissement` (`nom`) VALUES (:nom)");
				$stmt->execute(array(":nom" => $nom));
				return 1;
			}	
			catch(Exception $exc)
			{
				return 0;
                die($exc->getMessage());
			}
		}
		 

    	public function getIdSelonNoInterneA($noInterne) 
		{		
			try
			{
				$stmt = $this->connexion->prepare("SELECT id FROM artiste where noInterne = :noInterne ");
				$stmt->execute(array(":noInterne" => $noInterne));
				return $stmt->fetch();
			}	
			catch(Exception $exc)
			{
				return 0;
                die($exc->getMessage());
			}
		}
   
       
    
    
    
    
}
?>