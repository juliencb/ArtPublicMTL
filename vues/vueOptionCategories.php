<!--Debut Section des OEUVRES-->	
<section class= "contenu flex pas_accueil">
    <section class="flex row JCflex-start " id="sectionOeuvres">
	<!--Debut menu PAGE OEUVRES-->	
        <aside class="flex column">
            <div id="afficheRecherche"></div>
             <select class="row pas_Select" id="categorie">
                <option value="_">Catégorie</option>
                <?php 
                    foreach($data as $categorie){
                    echo"<option value='{$categorie["nom"]}'>{$categorie["nom"]}</option>";
                    }
                ?>
            </select>