<?php
	class Routeur
	{
		public static function route()
		{
			//obtenir le controleur qui devra traiter la requête

			//$controleur = $_REQUEST["controleur"];

			//obtenir la query string
			$chaineRequete = $_SERVER["QUERY_STRING"];
			$posEperluette = strpos($chaineRequete, "&");
			if($posEperluette)
				$controleur = substr($chaineRequete, 0, $posEperluette);
			else
				$controleur =  substr($chaineRequete, 0);
			//print_r($controleur);
			
			if($controleur != ""){
				//chercher la classe du controleur
				$classe = "Controleur_" . $controleur;
			}

			else{	
				//controleur par défaut

				$classe = "Controleur_Public";
			}

			//vérifier que la classe existe
			if(class_exists($classe)){
				$objetControleur = new $classe;
				$objetControleur->traite($_REQUEST);
			}
			else
			{
				die("Erreur 404! Le controleur n'existe pas.");
			}
		}
		
	}
?>