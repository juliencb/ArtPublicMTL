<?php
	class Modele_Oeuvres extends TemplateDAO
	{
		public function getTable()
		{
			return "oeuvre";
		}


		
		///---la Requete SQL permet pour obtenir certaines informations de toutes 
		///---les oeuvres ainsi que le nom de artiste lié à chaque oeuvre.---///
		public function obtenirTousOeuvresArtistes()
		{
			try
			{	
						
				$stmt = $this->connexion->prepare("SELECT oeuvre.id, idArtiste,titre, titreVariante, categorie,urlImage, artiste.prenom, artiste.nom 
													FROM oeuvre JOIN artiste ON idArtiste = artiste.id");
				$stmt->execute();
				return $stmt->fetchAll();
			}		
			catch(Exception $exc)
			{
				return false;
			}
		}

		
		///---la Requete SQL permet pour obtenir certaines informations de toutes 
		///---les oeuvres d'une categorie ainsi que le nom de artiste lié à chaque oeuvre.---///
		public function obtenirOeuvresCategorie($uneCategorie)
		{
			try
			{	
				$stmt = $this->connexion->prepare("SELECT oeuvre.id, titre, idArtiste, categorie,urlImage, artiste.prenom, artiste.nom  
													FROM oeuvre JOIN artiste ON idArtiste = artiste.id WHERE categorie= :uneCategorie");
				$stmt->bindParam(":uneCategorie", $uneCategorie);
				$stmt->execute();
				return $stmt->fetchAll();
				
			}		
			catch(Exception $exc)
			{
				return false;
			}

		}
		///---la Requete SQL permet d'obtenir certaines informations de toutes 
		///---les oeuvres d'un arrondissement ainsi que le nom de artiste lié à chaque oeuvre.---///
		public function obtenirOeuvresArrondissement($unArrondissement)
		{
			try
			{			
				$stmt = $this->connexion->prepare("SELECT oeuvre.id, idArtiste, titre, arrondissement,urlImage, artiste.prenom, artiste.nom 
													FROM oeuvre JOIN artiste ON idArtiste = artiste.id
													WHERE arrondissement= :unArrondissement");
				$stmt->bindParam(":unArrondissement", $unArrondissement);
				$stmt->execute();
				return $stmt->fetchAll();
			}		
			catch(Exception $exc)
			{
				return false;
			}
		
		}
			
		// Mise a jour des oeuvres (a partir de l'information du formulaire de soumission)
		public function oeuvreMAJ($id, $titre, $categorie, $arrondissement, $adresse, $description, $image,  $nomParc, $batiment,  
		$prenomArtiste, $nomArtiste,  $nomCollectif, $bio,  $modeAcquisition, $numeroAccession, $dateAccession, $materiaux, 
		$support, $technique, $dimensionGenerales, $coordonneeLatitude, $coordonneeLongitude, $mediums){	
			
		

			try{
				if ($id == "") {
					/*
					$stmt = $this->connexion->prepare("insert into oeuvre(titre, categorie, arrondissement, adresseCivique, description, urlImage, 
						parc, batiment, modeAcquisition, numeroAccession, dateAccession, materiaux, support, technique, dimensionsGenerales, coordonneeLatitude, coordonneeLongitude, mediums) 
						values (:titre, :categorie, :arrondissement, :adresse, :description, :image,  :nomParc, :batiment, :modeAcquisition, 
						:numeroAccession, :dateAccession, :materiaux, :support, :technique, :dimensionGenerales, :coordonneeLatitude, :coordonneeLongitude, :mediums)");
						$stmt->bindParam(":titre" , $titre);
						$stmt->bindParam(":categorie" , $categorie);
						$stmt->bindParam(":arrondissement" , $arrondissement);
						$stmt->bindParam(":adresseCivique" , $adresse);
						$stmt->bindParam(":description" , $description);
						$stmt->bindParam(":urlImage" , $image);
						$stmt->bindParam(":parc" , $nomParc);
						$stmt->bindParam(":batiment" , $batiment);
						$stmt->bindParam(":modeAcquisition" , $modeAcquisition);
						$stmt->bindParam(":numeroAccession" , $numeroAccession);
						$stmt->bindParam(":dateAccession" , $dateAccession);
						$stmt->bindParam(":materiaux" , $materiaux);
						$stmt->bindParam(":support" , $support);
						$stmt->bindParam(":technique" , $technique);
						$stmt->bindParam(":dimensionGenerales" , $dimensionGenerales);
						$stmt->bindParam(":coordonneeLatitude" , $coordonneeLatitude);
						$stmt->bindParam(":coordonneeLongitude" , $coordonneeLongitude);
						$stmt->bindParam(":mediums" , $mediums);
					*/		
					$quote = '"';
					$sep = $quote.",".$quote;
					$sql = "insert into oeuvre(titre, categorie, arrondissement, adresseCivique, description, urlImage,  parc, batiment, modeAcquisition, numeroAccession, dateAccession, materiaux, support, technique, dimensionsGenerales, coordonneeLatitude, coordonneeLongitude, mediums) ".
						" values ('".$titre."', '".$this->res($categorie)."', '".$arrondissement."', '". $adresse."', '".$description."', '".$image."', '".$nomParc."', '".$batiment."', '".$modeAcquisition. 
						"', '".$numeroAccession."', '".$dateAccession."', '".$materiaux."', '".$support."', '".$technique."', '".$dimensionGenerales."', '".$coordonneeLatitude."', '".$coordonneeLongitude."', '".$mediums."')";

					//	$sql = "insert into oeuvre(titre, categorie, arrondissement, adresseCivique, description, urlImage,  parc, batiment, modeAcquisition, numeroAccession, dateAccession, materiaux, support, technique, dimensionsGenerales, coordonneeLatitude, coordonneeLongitude, mediums) ".
					//	" values (".$quote. $titre.$sep.$this->res($categorie).
					//	$sep.$this->res($arrondissement).$sep. $adresse.$sep.$description.$sep.$image.$sep.$nomParc.$sep.$batiment.$sep.$modeAcquisition. 
					//	$sep.$numeroAccession.$sep.$dateAccession.$sep.$materiaux.$sep.$support.$sep.$technique.$sep.$dimensionGenerales.$sep.$coordonneeLatitude.$sep.$coordonneeLongitude.$sep.$mediums.$quote.")";

						
						
						$stmt = $this->connexion->prepare($sql);
						$stmt->execute();
					
                        //throw ("Ca va mal");
						//$stmt->execute(array(":titre" => $titre, ":categorie" => $categorie, ":arrondissement" => $arrondissement, ":adresse" => $adresse, ":description" => $description, ":image" => $image,
						//":nomParc" => $nomParc, ":batiment" => $batiment, ":modeAcquisition" => $modeAcquisition, ":numeroAccession" => $numeroAccession, ":dateAccession" => $dateAccession, 
						//":materiaux" => $materiaux, ":support" => $support, ":technique" => $technique, ":dimensionGenerales" => $dimensionGenerales, ":coordonneeLatitude" => $coordonneeLatitude, ":coordonneeLongitude" => $coordonneeLongitude, ":mediums" => $mediums));
				
				return "Merci pour votre soumission. Elle sera traite eventuellement... query = ". $sql;
				}
			}	
			catch(Exception $exc){
				return $exc->getmessage() . " sql=" . $sql . "  ***ERREUR: Une erreur fastidieuse s'est produite";
			}
			
				
		
		
		}
		
		//fonction qui protege contre injection sql
	public function res($parametre){
		return str_replace ("'","''",$parametre);
	}

	}
?>