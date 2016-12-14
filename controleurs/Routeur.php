<?php
	class Routeur
	{
		public static function route()
		{
<<<<<<< HEAD
			//obtenir le controleur qui devra traiter la requête
=======
			//obtenir le controleur qui devra traiter la requ`ète
>>>>>>> origin/master
			//$controleur = $_REQUEST["controleur"];

			//obtenir la query string
			$chaineRequete = $_SERVER["QUERY_STRING"];
			$posEperluette = strpos($chaineRequete, "&");
			if($posEperluette)
				$controleur = substr($chaineRequete, 0, $posEperluette);
			else
				$controleur =  substr($chaineRequete, 0);
			//print_r($controleur);
			
			if($controleur != "")
			{
				//chercher la classe du controleur
				$classe = "Controleur_" . $controleur;
				
			}
			else
			{	
<<<<<<< HEAD
				//controleur par défaut
=======
				//controleur par dÃ©faut
>>>>>>> origin/master
				$classe = "Controleur_Public";

			}
<<<<<<< HEAD
			//vérifier que la classe existe
=======
			//vÃ©rifier que la classe existe
>>>>>>> origin/master
			if(class_exists($classe))
			{
				//dans $classe se trouve le nom de la classe ex : "Controleur_Films"
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