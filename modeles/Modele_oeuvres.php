<?php
	class Modele_oeuvres extends TemplateDAO{
		public function getTable(){
			return "oeuvre";
		}
		
		///---la Requete SQL permet pour obtenir certaines informations de toutes 
		///---les oeuvres ainsi que le nom de artiste lié à chaque oeuvre.---///
		public function obtenirTousOeuvresArtistes(){
			try{			
				$stmt = $this->connexion->prepare("SELECT oeuvre.id, idArtiste,titre, titreVariante, categorie,urlImage, artiste.prenom, artiste.nom 
													FROM oeuvre JOIN artiste ON idArtiste = artiste.id");
				$stmt->execute();
				return $stmt->fetchAll();
			}		
			catch(Exception $exc){
				return false;
			}
		}

		///---la Requete SQL permet pour obtenir certaines informations de toutes 
		///---les oeuvres d'une categorie ainsi que le nom de artiste lié à chaque oeuvre.---///
		public function obtenirOeuvresCategorie($uneCategorie){
			try{	
				$stmt = $this->connexion->prepare("SELECT oeuvre.id, titre, idArtiste, categorie,urlImage, artiste.prenom, artiste.nom  
													FROM oeuvre JOIN artiste ON idArtiste = artiste.id WHERE categorie= :uneCategorie");
				$stmt->bindParam(":uneCategorie", $uneCategorie);
				$stmt->execute();
				return $stmt->fetchAll();	
			}		
			catch(Exception $exc){
				return false;
			}
		}
		///---la Requete SQL permet d'obtenir certaines informations de toutes 
		///---les oeuvres d'un arrondissement ainsi que le nom de artiste lié à chaque oeuvre.---///
		public function obtenirOeuvresArrondissement($unArrondissement){
			try{			
				$stmt = $this->connexion->prepare("SELECT oeuvre.id, idArtiste, titre, arrondissement,urlImage, artiste.prenom, artiste.nom, coordonneeLatitude, coordonneeLongitude
													FROM oeuvre JOIN artiste ON idArtiste = artiste.id
													WHERE arrondissement= :unArrondissement");
				$stmt->bindParam(":unArrondissement", $unArrondissement);
				$stmt->execute();
				return $stmt->fetchAll();
			}		
			catch(Exception $exc){
				return false;
			}
		}
			
		// Mise a jour des oeuvres (a partir de l'information du formulaire de soumission)
		public function oeuvreMAJ($id, $titre, $categorie, $arrondissement, $adresse, $description, $image,  $nomParc, $batiment,  
		$prenomArtiste, $nomArtiste,  $nomCollectif, $bio,  $modeAcquisition, $numeroAccession, $dateAccession, $materiaux, 
		$support, $technique, $dimensionGenerales, $coordonneeLatitude, $coordonneeLongitude, $mediums){	
			try{
				if ($id == "") {		
					$quote = '"';
					$sep = $quote.",".$quote;
					$sql = "insert into oeuvre(titre, categorie, arrondissement, adresseCivique, description, urlImage,  parc, batiment, modeAcquisition, numeroAccession, dateAccession, materiaux, support, technique, dimensionsGenerales, coordonneeLatitude, coordonneeLongitude, mediums) ".
						" values ('".$titre."', '".$this->res($categorie)."', '".$arrondissement."', '". $adresse."', '".$description."', '".$image."', '".$nomParc."', '".$batiment."', '".$modeAcquisition. 
						"', '".$numeroAccession."', '".$dateAccession."', '".$materiaux."', '".$support."', '".$technique."', '".$dimensionGenerales."', '".$coordonneeLatitude."', '".$coordonneeLongitude."', '".$mediums."')";

						$stmt = $this->connexion->prepare($sql);
						$stmt->execute();

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