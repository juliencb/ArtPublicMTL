<?php
	class Controleur_Public_AJAX extends Controleur_Public
	{	
		//la fonction qui sera appelée par le routeur
		public function traite(array $params)
		{				
			if(isset($params["action"]))
			{
				//modèle et vue vides par défaut
				$data = array();
				$vue = "";
				//switch en fonction de l'action qui nous est envoyée
				//ce switch détermine la vue $vue et obtient le modèle $data
				switch($params["action"])
				{	
					case "afficheOeuvresCategorie":
						$modeleOeuvres= new Modele_Oeuvres();
						if(isset($params["categorie"]) && ($params["categorie"])!="")
						{   //$reponse=$modeleOeuvres-> obtenirTous();
							$data=$modeleOeuvres-> obtenirOeuvresCategorie($params["categorie"]);
							//$data=json_encode($reponse);
							//echo $data;
							
							//echo "TESTES=======>".$params["categorie"];
							/*foreach($reponse as $data)
							{
								echo $data["titre"]."<br/>";
							}*/
							
							/*
							foreach($reponse as $data)
							{
								echo"<div id='{$data["id"]}'>
								<a href=' #'>";
								if($data["urlImage"]=="")
								{
									$data["urlImage"]="no-image-available";
								}
								
								echo "<img class='photo' src='./images/{$data["urlImage"]}.jpg'alt='{$data["titre"]}'/>
									
								 </a>
									<div class='hoverPhoto'>
									
										<span class='titreOeuvres'><a href=' #'>Titre: {$data["titre"]}</a></span>}
										<span class='nomArtistes'><a href=' #'>Artiste: {$data["prenom"]} {$data["prenom"]}</a></span>
									</div>
								</div>";
							}*/
							$this->afficheVue("vueOeuvres", $data);
						}
					break;
				
				case "afficheOeuvresArrondissement":
						$modeleOeuvres= new Modele_Oeuvres();
						if(isset($params["arrondissement"]) && ($params["arrondissement"])!="")
						{   //$reponse=$modeleOeuvres-> obtenirTous();
							$reponse=$modeleOeuvres-> obtenirOeuvresArrondissement($params["arrondissement"]);
							
							
							//var_dump($reponse);
							foreach($reponse as $data)
							{
								echo "<br><br>";
								echo json_encode($data["titre"]);
								echo "<br><br>";
								//var_dump($data);
								echo"<div id='{$data["id"]}'>
								<a href=' #'>";
								if($data["urlImage"]=="")
								{
									$data["urlImage"]="no-image-available";
								}
								
								echo "<img class='photo' src='./images/{$data["urlImage"]}.jpg'alt='{$data["titre"]}'/>
									
								 </a>
									<div class='hoverPhoto'>
									
										<span class='titreOeuvres'><a href=' #'>Titre: {$data["titre"]}</a></span>}
										<span class='nomArtistes'><a href=' #'>Artiste: {$data["prenom"]} {$data["nom"]}</a></span>
									</div>
								</div>";
							}
						}
					break;

				
					default:
						echo "ERROR";		
				}						
			}
			else
			{
					//action par défaut
					echo "ERROR";					
			}			
		}	
	}
?>