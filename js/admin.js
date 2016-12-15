//--IIFE fait la validation de l'information soumis par usager avant de faire la requete server pour authentification
(function () {
    window.addEventListener("load", function () {
        if ($("#sectionLogin")) {
            $("#btnSoumettre").on("click", function () {
                //valide que le champs sont rempli avant de faire la requete vers le server
                if (($("#username").val() !== "") && ($("#password").val() !== "")) {
                    encrypte();
                } else {
                    var message = "vous devez remplir tous les champs!";
                    $("#message").html("");
                    $("#message").append(message);

                    if ($("#username").val() == "")
                        $("#username").focus();
                    else
                        $("#password").focus();
                }
            });
        }

    });

    //function va encripter les informations venant du formulaire de login
    function encrypte() {
        var passwordEncrypte = md5(document.loginForm.password.value);
        var grainSel = document.loginForm.grainSel.value;
        var passwordPlusGrainSel = md5(passwordEncrypte + grainSel);
        var username = document.loginForm.username.value;

        document.formEncrypte.password.value = passwordPlusGrainSel;
        document.formEncrypte.username.value = username;
        document.formEncrypte.grainSel.value = grainSel;
        document.formEncrypte.submit();
    };
    //--Fin fonction de validation Javascript
})();