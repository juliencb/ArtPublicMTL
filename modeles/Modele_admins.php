<?php
	class Modele_admins extends TemplateDAO
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
                                     $arrondissement
                                     )
		{		
			try
			{
				$stmt = $this->connexion->prepare("INSERT INTO `oeuvre` (`noInterne`, `titre`, `titreVariante`, `nomCollection`, `categorieObjet`, `modeAcquisition`, `dateAccession`, `materiaux`, `support`, `technique`, `dimensionsGenerales`, `parc`, `batiment`, `adresseCivique`, `coordonneeLatitude`, `coordonneeLongitude`, `numeroAccession`, `description`, `urlImage`, `categorie`, `arrondissement`) VALUES (:noInterne, :titre, :titreVariante, :nomCollection, :categorieObjet, :modeAcquisition, :dateAccession, :materiaux, :support, :technique, :dimensionsGenerales, :parc, :batiment, :adresseCivique, :coordonneeLatitude, :coordonneeLongitude, :numeroAccession, :description, :urlImage, :categorie, :arrondissement)");
				$stmt->execute(array("noInterne" => $noInterne, 
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
                                     ":arrondissement" => $arrondissement
                                     
                                     ));
				return 1;
			}	
			catch(Exception $exc)
			{
				return 0;
			}
		}
        
        public function insereArtiste($noInterne, $nom, $prenom, $nomCollectif)
		{		
			try
			{
				$stmt = $this->connexion->prepare("INSERT INTO `artiste` (`noInterne`, `nom`, `prenom`, `nomCollectif`) VALUES (:noInterne, :nom, :prenom, :nomCollectif)");
                
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
			}
		}
		
		
		public function getIdSelonNoInterneO($noInterne)
		{		
			try
			{
				$stmt = $this->connexion->prepare("SELECT id FROM oeuvre where noInterne = :noInterne ");
				$stmt->execute(array(":noInterne" => $noInterne));
				return $stmt->fetch();
			}	
			catch(Exception $exc)
			{
				return 0;
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
			}
		}
		
		public function insereLiens($idOeuvre, $idArtiste)
		{		
			try
			{
				$stmt = $this->connexion->prepare("INSERT INTO `oeuvreArtiste` (`idOeuvre`, `idArtiste`) VALUES (:idOeuvre, :idArtiste)");
				$stmt->execute(array(":idOeuvre" => $idOeuvre, ":idArtiste" => $idArtiste));
				return 1;
			}	
			catch(Exception $exc)
			{
				return 0;
			}
		}
		
		public function lienOeuvreArron($idOeuvre, $arron)
		{		
			try
			{
				$stmt = $this->connexion->prepare("INSERT INTO `oeuvreArrondissement` (`idOeuvre`, `nomArrondissement`) VALUES (:idOeuvre, :arron)");
				$stmt->execute(array(":idOeuvre" => $idOeuvre, ":arron" => $arron));
				return 1;
			}	
			catch(Exception $exc)
			{
				return 0;
			}
		}
        
      
      
	}
?>

