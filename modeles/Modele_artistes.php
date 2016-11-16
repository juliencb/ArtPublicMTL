<?php
	class Modele_Artistes extends TemplateDAO
	{
		public function getTable()
		{


			return "artiste";

		}
		

		public function nomOeuvre($id)
		{		
			try
			{
				$stmt = $this->connexion->prepare("select oeuvre.titre,oeuvre.categorieObjet,oeuvre.categorie,oeuvre.parc,oeuvre.materiaux,oeuvre.adresseCivique,oeuvre.urlImage,artiste.nom,artiste.prenom,artiste.nomCollectif, arrondissement.nom as nomArrondissement from oeuvre 
				join oeuvreartiste on oeuvre.id = oeuvreartiste.idOeuvre 
				join artiste on oeuvreartiste.idArtiste = artiste.id join arrondissement on oeuvre.arrondissement = arrondissement.nom where oeuvre.id = :id");
				
				$stmt->execute(array(":id" => $id));
				return $stmt->fetch();
				
			}	
			catch(Exception $exc)
			{
				return 0;
			}
		}
		
		
	}
?>