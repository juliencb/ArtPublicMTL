<script>
    window.addEventListener("load", function(){
        var btnModifPropos = document.getElementById("btnModifPropos");
        btnModifPropos.addEventListener("click", function(evt){
            //alert("Cascavel!!!");
            var sommesT = document.getElementById("sommesT");
            var sommesD = document.getElementById("sommesD");
            var missionT = document.getElementById("missionT");
            var missionD = document.getElementById("missionD");
            var joindreT = document.getElementById("joindreT");
            var joindreD = document.getElementById("joindreD");
            var partenaireT = document.getElementById("partenaireT");
            var partenaireD = document.getElementById("partenaireD");
        });
    });
</script>

<!--commencer directement avec la div contenu-->
<div class="contenu">
	<h1>Modification À Propos</h1>
    <form id="formModification" method="GET">
        <label for="sommesT">SommesT: </label>
        <input type="text" name="sommesT" id="sommesT"><br>
        <label for="sommesD">SommesD: </label>
        <textarea name="sommesD" id="sommesD" rows="5" cols="50"></textarea><br>
        <label for="missionT">MissionT: </label>
        <input type="text" name="missionT" id="missionT"><br>
        <label for="missionD">MissionD: </label>
        <textarea name="missionD" id="missionD" rows="5" cols="50"></textarea><br>
        <label for="joindreT">JoindreT: </label>
        <input type="text" name="joindreT" id="joindreT"><br>
        <label for="joindreD">JoindreD: </label>
        <textarea name="joindreD" id="joindreD" rows="5" cols="50"></textarea><br>
        <label for="partenaireT">PartenaireT: </label>
        <input type="text" name="partenaireT" id="partenaireT"><br>
        <label for="partenaireD">PartenaireD: </label>
        <textarea name="partenaireD" id="partenaireD" rows="5" cols="50"></textarea><br>
        
        <input type="hidden" name="action" value="modifierPagePropos"/>
		<input id="btnModifPropos" type="button" name="modifier" value="Modifier la page"/>
    </form>
</div>	