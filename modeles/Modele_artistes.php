
﻿<?php
	class Modele_artistes extends TemplateDAO
	{
		public function getTable()
		{
			return "artiste";
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
				$stmt = $this->connexion->prepare("SELECT urlImage FROM artiste JOIN oeuvreartiste ON idArtiste = artiste.id JOIN oeuvre ON idOeuvre = oeuvre.id WHERE artiste.id = :valeur");
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

