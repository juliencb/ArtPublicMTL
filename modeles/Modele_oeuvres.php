<?php
	class Modele_Oeuvres extends TemplateDAO
	{
		public function getTable()
		{
			return "oeuvre";
		}

		//fontion permet de recuperer les informations sur une oeuvre
		/*public function ObtenirUneOeuvre($IdOeuvre)
		{
			try
			{	
						
				$stmt = $this->connexion->prepare("SELECT titre, titreVariante, nomCollection, categorieObjet,sousCategorieObjet, 
													modeAcquisition, dateAccession, materiaux,support,technique,dimensionsGenerales,
													parc,batiment,adresseCivique,coordonneeLatitude,coordonneeLongitude,description,
													urlImage,arrondissement,categorie, CONCAT(artiste.nom," ", artiste.prenom) AS nomArtiste
													FROM" . $this->getTable() . " JOIN oeuvreartiste ON IdOeuvre = oeuvre.id 
													JOIN artiste ON IdArtiste= artiste.id WHERE Id IdOeuvre= :Id_Oeuvre");
				//$stmt = $this->connexion->prepare("select * from " . $this->getTable() . " where idRealisateur = 2");
				$stmt->bindParam(":Id_Oeuvre", $IdOeuvre);
				$stmt->execute();
				return $stmt->fetchAll();
			}		
			catch(Exception $exc)
			{
				return false;
			}
		
		
		}*/
		
		/*---la Requete SQL permet pour obtenir certaines informations de toutes 
		les oeuvres ainsi que le nom de artiste lié à chaque oeuvre.---*/
		public function obtenirTousOeuvresArtistes()
		{
			try
			{	
						
				$stmt = $this->connexion->prepare("SELECT oeuvre.id, titre, titreVariante, nomCollection, 
													categorieObjet,sousCategorieObjet,modeAcquisition,dateAccession,
													materiaux,support,technique,dimensionsGenerales,parc,batiment,
													adresseCivique,coordonneeLatitude,coordonneeLongitude,description,
													urlImage,arrondissement,categorie, Concat(artiste.prenom,' ',artiste.nom)AS nomArtiste 
													FROM " . $this->getTable() . " 
													JOIN oeuvreartiste ON IdOeuvre = oeuvre.id 
													JOIN artiste ON IdArtiste = artiste.id");
				$stmt->execute();
				return $stmt->fetchAll();
			}		
			catch(Exception $exc)
			{
				return false;
			}

		}
		
		
	}
?>