<?php
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
				$stmt = $this->connexion->prepare("SELECT biographie FROM artiste WHERE id = :valeur");
				$stmt->bindParam(":valeur", $valeur);
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

