<?php
	class Modele_Artistes extends TemplateDAO
	{
		public function getTable()
		{
			return "artiste";
		}

		public function insereRealisateur($prenom, $nom, $bio)
		{		
			try
			{
				$stmt = $this->connexion->prepare("insert into realisateurs(prenom, nom, bio) values (:prenom, :nom, :bio)");
				$stmt->execute(array(":prenom" => $prenom, ":nom" => $nom, ":bio" => $bio));
				return 1;
			}	
			catch(Exception $exc)
			{
				return 0;
			}
		}
		
	}
?>