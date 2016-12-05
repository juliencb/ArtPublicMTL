(function() {
    //References http://stackoverflow.com/questions/23980733/jquery-ajax-file-upload-php
    $(document).ready(function(){
        $("#formChargementImage").change(function(){
            var file_data = $('#chargerImage').prop('files')[0];   
            var form_data = new FormData();                                              
            form_data.append('file', file_data);
            $.ajax({
                //url: 'http://localhost/ArtPublicMTL/index.php?Public_AJAX&action=telechargementImage', // point to server-side PHP script 
                url: 'http://localhost/ArtPublicMTL/vues/upload.php', // point to server-side PHP script 
                dataType: 'text',  // what to expect back from the PHP script, if anything
                cache: false,
                contentType: false,
                processData: false,
                //data: {form_data,'tofile':tofile},   
                data: form_data,                         								
                type: 'post',
                success: function(nom_fichier){
                    // code pour prendre le nom de fichier a faire.
                    alert("NOM FICHIER:" + nom_fichier); // display response from the PHP script, if any
                    // Ajouter ou modifier l'image. 
                    var imgForm = document.getElementById("formChargementImage");
                    var img;
                    //alert ("imgId:" + document.getElementById("imgId"));
                    if (document.getElementById("imgId") == null){
                      img = document.createElement("img");
                      img.id = "imgId";
                      img.src = nom_fichier.substring(3);
                      imgForm.appendChild(img);
                    }
                    else {
                      img = document.getElementById("imgId");
                      img.src = nom_fichier.substring(3);
                    }
                }
            });
        });
    });
})();