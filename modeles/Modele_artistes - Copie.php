<?php
	class Modele_artistes extends TemplateDAO
	{
		public function getTable()
		{
			return "artiste";
		}
		
		//requête pour trouver le nom de l'artiste qui commence avec la lettre choisie
		public function obtenirTousArtistes($valeur, $cle = null)
		{
			try
			{	
				$val = $valeur . "%";
				$stmt = $this->connexion->prepare("SELECT * FROM " . $this->getTable(). " WHERE " . $cle . " LIKE :valeur");
				//$stmt = $this->connexion->prepare("SELECT * FROM " . $this->getTable(). " WHERE " . $cle . " LIKE a%");
				$stmt->bindParam(":valeur", $val);
				$stmt->execute();
				return $stmt->fetchAll();
			}
			
			catch(Exception $exc)
			{
				return false;
			}

		}
		
		//afficher la description d'un artiste
		public function obtenirDescriptionArtiste ($valeur, $cle = null){
			try
			{
				$val = $valeur . "%";
				$stmt = $this->connexion->prepare("SELECT * FROM " . $this->getTable() . " WHERE " . $cle . " LIKE :valeur");
				$stmt->bindParam(":valeur", $val);
				$stmt->execute();
				return $stmt->fetch();
			}
			
			catch(Exception $exc)
			{
				return false;
			}
		}
	}
?>

