<?php
	class Modele_usagers extends TemplateDAO
	{
		public function getTable()
		{
			return "usagers";
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
		

        //selects toutes les données utiles pour faire la création des selectes de la recherche avancée
        public function optionsSelects()
        {
            
            try
			{
	
				$stmt = $this->connexion->prepare("SELECT joueurs.prenom, joueurs.nom, nbPasses, nbButs, URL FROM joueurs JOIN choix 
				ON joueurId = ID WHERE courrielId=':courriel'");
				$stmt->bindParam(":courriel", $courriel);
				$stmt->execute();
				return $stmt->fetchAll();
				
				
				/*$stmt = $this->connexion->prepare("SELECT joueurs.prenom, joueurs.nom, nbPasses,nbButs,URL FROM joueurs JOIN choix 
				ON joueurId = ID JOIN ". $this->getTable() ." ON courrielId = courriel WHERE courrielId=':courriel'");
				$stmt->bindParam(":courriel", $courriel);
				$stmt->execute();
				return $stmt->fetchAll();*/
			}
			catch(Exception $exc)
			{
				return false;
			}    
            
        }
        
	}
?>