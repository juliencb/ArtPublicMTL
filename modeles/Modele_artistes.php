<<<<<<< HEAD

﻿<?php
	class Modele_artistes extends TemplateDAO
=======
﻿<?php
	class Modele_Artistes extends TemplateDAO
>>>>>>> origin/master
	{
		public function getTable()
		{
			return "artiste";
		}
		
		//afficher toute la liste des artiste en ordre alphabetique par nom
		public function obtenirTousArtisteAlphabetique(){
			try
			{
				$stmt = $this->connexion->prepare("SELECT id, IFNULL(prenom, ' ')AS prenom, IFNULL(nom , nomCollectif) as nomArtiste FROM artiste ORDER BY nomArtiste");
				$stmt->bindParam(":valeur", $valeur);
				$stmt->execute();
				return $stmt->fetchAll();
			}
			
			catch(Exception $exc)
			{
				return false;
			}
		}

		//afficher la description d'un artiste
		public function obtenirDescriptionArtiste ($valeur){
			try
			{
				$stmt = $this->connexion->prepare("SELECT prenom, nom, nomCollectif, biographie FROM artiste WHERE id = :valeur");
				$stmt->bindParam(":valeur", $valeur);
				$stmt->execute();
				return $stmt->fetch();
			}
			
			catch(Exception $exc)
			{
				return false;
			}
		}

		public function obtenirOeuvresArtiste ($valeur){
			try
			{
				$stmt = $this->connexion->prepare("SELECT urlImage FROM artiste WHERE artiste.id = :valeur");
				$stmt->bindParam(":valeur", $valeur);
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

