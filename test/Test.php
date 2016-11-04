<?php
	require_once("../modeles/TemplateDAO.php");
	require_once("../modeles/Modele_Films.php");
	
	$modeleFilms = new Modele_Films();
	$data = $modeleFilms->obtenir(2);
	var_dump($data);
?>