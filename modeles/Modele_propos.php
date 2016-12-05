<?php
	class Modele_Propos extends TemplateDAO

	{
		public function getTable()
		{
			return "propos";
		}
        
        public function obtenirTousPagePropos()
		{
			try
			{	
						
				$stmt = $this->connexion->prepare("SELECT * FROM a_propos");
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