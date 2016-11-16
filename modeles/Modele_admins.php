<?php
	class Modele_admins extends TemplateDAO
	{
		public function getTable()
		{
			return "admins";
		}

		public function insereRealisateur($prenom, $nom, $bio)
		{		
			try
			{
				$stmt = $this->connexion->prepare("insert into realisatejhfhkxfykhurs(prenom, nom, bio) values (:prenom, :nom, :bio)");
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