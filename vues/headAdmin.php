<?php
	//démarrage de la session OU obtention de la session existente
	//session_start();
	
	if(!isset($_SESSION["authentifie"]))
		header("index.php?Admins");
?>	
<html>
    <meta charset="utf-8">
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script type="text/javascript" src="./js/md5.js"></script>
	<script type="text/javascript" src="./js/admin.js"></script>
	<link rel="stylesheet" href="css/soumission.css"/>
</head>
