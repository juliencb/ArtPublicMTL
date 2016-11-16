<?php

	function __autoload($classe)
	{
		$repertoires = array("./controleurs/", 
							 "./modeles/", 
							 "./vues/");
		foreach($repertoires as $rep)
		{
			if(file_exists($rep . $classe . ".php"))
			{
				require_once($rep . $classe . ".php");
				return;
			}
		}
	}
	
	Routeur::route();
?>