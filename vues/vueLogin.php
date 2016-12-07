<?php
$message="";
 //démarrage de la session OU obtention de la session existente
	session_start();
	if(!isset($_SESSION["grainDeSel"]))
		$_SESSION["grainDeSel"] = rand(1, 10000);

?>
<!--affichage du Login-->
<div id="sectionLogin">


	<form id ="loginForm" name="loginForm" method="POST">
		Nom d'utilisateur :  <input type="text" id ="username" name="username"/>		
		Mot de passe : <input type="text" id ="password"  name="password"/>	
		<input type="hidden" id= "grainSel" name="grainSel" value="<?php echo $_SESSION["grainDeSel"];?>"/>
		<input type="button"  id="btnSoumettre" value="Login"/>
	</form>
	<form id="formEncrypte"  name="formEncrypte" method="POST" action="./index.php?Admins&action=authentification">
		<input type="hidden" name="username"/>		
		<input type="hidden" name="password"/>	
		<input type="hidden" name="grainSel"/>
	</form>
	<span id="message"><?php echo $message;?></span>
	<br>
</div>