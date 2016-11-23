<?php
	class Modele_Oeuvres extends TemplateDAO
	{
		public function getTable()
		{
			return "oeuvre";
		}


		
		///---la Requete SQL permet pour obtenir certaines informations de toutes 
		///---les oeuvres ainsi que le nom de artiste lié à chaque oeuvre.---///
		public function obtenirTousOeuvresArtistes()
		{
			try
			{	
						
				$stmt = $this->connexion->prepare("SELECT oeuvre.id, idArtiste,titre, titreVariante, categorie,urlImage, artiste.prenom, artiste.nom 
													FROM oeuvre JOIN artiste ON idArtiste = artiste.id");
				$stmt->execute();
				return $stmt->fetchAll();
			}		
			catch(Exception $exc)
			{
				return false;
			}
		}

		
		///---la Requete SQL permet pour obtenir certaines informations de toutes 
		///---les oeuvres d'une categorie ainsi que le nom de artiste lié à chaque oeuvre.---///
		public function obtenirOeuvresCategorie($uneCategorie)
		{
			try
			{	
				$stmt = $this->connexion->prepare("SELECT oeuvre.id, titre, idArtiste, categorie,urlImage, artiste.prenom, artiste.nom  
													FROM oeuvre JOIN artiste ON idArtiste = artiste.id WHERE categorie= :uneCategorie");
				$stmt->bindParam(":uneCategorie", $uneCategorie);
				$stmt->execute();
				return $stmt->fetchAll();
				
			}		
			catch(Exception $exc)
			{
				return false;
			}

		}
		///---la Requete SQL permet d'obtenir certaines informations de toutes 
		///---les oeuvres d'un arrondissement ainsi que le nom de artiste lié à chaque oeuvre.---///
		public function obtenirOeuvresArrondissement($unArrondissement)
		{
			try
			{			
				$stmt = $this->connexion->prepare("SELECT oeuvre.id, idArtiste, titre, arrondissement,urlImage, artiste.prenom, artiste.nom 
													FROM oeuvre JOIN artiste ON idArtiste = artiste.id
													WHERE arrondissement= :unArrondissement");
				$stmt->bindParam(":unArrondissement", $unArrondissement);
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