<?php

	function __autoload($classe){
		$repertoires = array("./controleurs/", 
							 "./modeles/", 
							 "./vues/");

		foreach($repertoires as $rep){
			if(file_exists($rep . $classe . ".php")){
				require_once($rep . $classe . ".php");
				return;
			}
		}
	}
	
	//initie la session
    session_start();
	
	Routeur::route();
?>