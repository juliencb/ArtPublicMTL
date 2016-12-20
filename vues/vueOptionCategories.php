<!--Debut Section des OEUVRES-->
<select class="tousEgal pas_Select" id="categorie">
    <option value="_">Catégorie</option>
    <?php 
        foreach($data as $categorie){
        echo"<option value='{$categorie["nom"]}'>{$categorie["nom"]}</option>";
        }
    ?>
</select>