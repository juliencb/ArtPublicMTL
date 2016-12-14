<!--affichage du Login-->
<div id="sectionLogin">


	<form id ="loginForm" name="loginForm" method="POST">
		Nom d'utilisateur :  <input type="text" id ="username" = name="username" value="artpublicmtl"/>		
		Mot de passe : <input type="password" id ="password"  name="password" value="art123"/>	
		<input type="hidden" id= "grainSel" name="grainSel" value="<?php echo $_SESSION["grainDeSel"];?>"/>
		<input type="button"  id="btnSoumettre" value="Login"/>
	</form>
	<form id="formEncrypte"  name="formEncrypte" method="POST" action="./index.php?Admins&action=authentification">
		<input type="hidden" name="username"/>		
		<input type="hidden" name="password"/>	
		<input type="hidden" name="grainSel"/>
	</form>
	<span id="message"><?php  if(isset($data["message"])) echo $data["message"] ;?></span>
	<br>
</div>