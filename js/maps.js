(function () {
    var divinfo = "";
    var locations = [];
    var map;
    window.addEventListener("load", function () {
        if (document.querySelector("#map")) {
            var x = 0;
            var longueur = donnees_carte.length;
            for (var i = 0; i < longueur; i++) {
                // fabrication de l'indoWindow du curseur de la map
                divInfo = "<div class='infoWindow'>";
                //section de l'image
                if (donnees_carte[i]["urlImage"] != "") {
                    divInfo += "<section>";
                    divInfo += "<img style='height:100px' src='./images/";
                    divInfo += donnees_carte[i]["urlImage"];
                    divInfo += ".jpg' />";
                    divInfo += "</section>";
                }
                //section du texte
                divInfo += "<section><a href='./index.php?public&action=details&id=" + donnees_carte[i]["id"] + "'>";
                divInfo += donnees_carte[i]["titre"];
                divInfo += "</a><br>";
                divInfo += "<a href='./index.php?public&action=descriptionArtiste&id=" + donnees_carte[i]["idArtiste"] + "'>";
                if (donnees_carte[i]["prenom"]) {
                    divInfo += donnees_carte[i]["nom"] + ", " + donnees_carte[i]["prenom"];
                }
                else {
                    divInfo += donnees_carte[i]["nomCollectif"];
                }
                divInfo += "</a></section>";
                //   https://developers.google.com/maps/documentation/javascript/adding-a-google-map
                //   comment mettre une map de google dans un site 
                if (donnees_carte[i]["coordonneeLatitude"] != "") {
                    //rempli le tableau des locations
                    locations.push({
                        lat: parseFloat(donnees_carte[i]["coordonneeLatitude"])
                        , lng: parseFloat(donnees_carte[i]["coordonneeLongitude"])
                        , titre: donnees_carte[i]["titre"]
                        , infoWindow: divInfo
                    });
                }
            } // fin de la boucle for
        }
        initMap();
        
        function setMapOnAll(map) {
            for (var i = 0; i < locations.length; i++) {
               // console.log(locations[i]);
                locations[i].setMap(map);
                
            }
        }
        //*****************************************
        /*if (document.querySelector("#arrondissements")) {
            var arron = document.querySelector("#arrondissements");
            arron.addEventListener("change", function () {});
        }*/
        if (document.querySelector("#categorie")) {
            var cat = document.querySelector("#categorie");
            cat.addEventListener("change", function () {
                setMapOnAll(null);                      ///////////------------------------------ ICI
                //locations = [];
            });
        }
        //*****************************************
    });

    

    function initMap() {
        //style: https://snazzymaps.com/style/71052/gray-and-red
        //documentation: https://developers.google.com/maps/documentation/javascript/styling
        //Create an array of styles.
        var styles = [{
                "featureType": "administrative"
                , "elementType": "labels"
                , "stylers": [{
                    "visibility": "simplified"
                }, {
                    "color": "#ff0000"
                }]
            }
                                    , {
                "featureType": "administrative"
                , "elementType": "labels.text.fill"
                , "stylers": [{
                    "color": "#444444"
                }]
            }
                                    , {
                "featureType": "administrative.country"
                , "elementType": "labels"
                , "stylers": [{
                    "color": "#fc0505"
                }, {
                    "visibility": "on"
                }]
            }
                                    , {
                "featureType": "administrative.province"
                , "elementType": "labels"
                , "stylers": [{
                    "color": "#ff0000"
                }, {
                    "visibility": "simplified"
                }]
            }
                                    , {
                "featureType": "administrative.locality"
                , "elementType": "labels"
                , "stylers": [{
                    "color": "#ff0000"
                }, {
                    "visibility": "simplified"
                }]
            }
                                    , {
                "featureType": "administrative.neighborhood"
                , "elementType": "labels"
                , "stylers": [{
                        "color": "#ff0000"
                    }
                                    , {
                        "visibility": "simplified"
                    }]
            }, {
                "featureType": "administrative.land_parcel"
                , "elementType": "labels"
                , "stylers": [{
                    "color": "#ff0000"
                }, {
                    "visibility": "simplified"
                }]
            }
                                    , {
                "featureType": "landscape"
                , "elementType": "all"
                , "stylers": [{
                    "color": "#eaeaea"
                }]
            }
                                    , {
                "featureType": "poi"
                , "elementType": "all"
                , "stylers": [{
                    "visibility": "off"
                }]
            }
                                    , {
                "featureType": "road"
                , "elementType": "all"
                , "stylers": [{
                    "saturation": -100
                }, {
                    "lightness": 0
                }]
            }
                                    , {
                "featureType": "road.highway"
                , "elementType": "all"
                , "stylers": [{
                    "visibility": "simplified"
                }]
            }
                                    , {
                "featureType": "road.arterial"
                , "elementType": "labels.icon"
                , "stylers": [{
                    "visibility": "off"
                }]
            }
                                    , {
                "featureType": "transit"
                , "elementType": "all"
                , "stylers": [{
                    "visibility": "off"
                }]
            }
            , {
                "featureType": "water"
                , "elementType": "all"
                , "stylers": [{
                    "color": "#aaaaaa"
                }, {
                    "visibility": "on"
                }]
            }];
        // Create a new StyledMapType object, passing it the array of styles,
        // as well as the name to be displayed on the map type control.
        var styledMap = new google.maps.StyledMapType(styles, {
            name: "Mautadine de belle Map"
        });
     
        if (document.querySelector(".touteLaCarte")) {
            var mapOptions = {
                zoom: 11
                , center: new google.maps.LatLng(45.5567049, -73.7413048)
                , mapTypeControlOptions: {
                    mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style']
                }
            }
        }
        if (document.querySelector(".oeuvresParArrondissement")) {
            var mapOptions = {
                zoom: 12
                , center: locations[0]
                , mapTypeControlOptions: {
                    mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style']
                }
            }
        }
        if (document.querySelector(".pageUneOeuvre")) {
            var mapOptions = {
                zoom: 14
                , center: locations[0]
                , mapTypeControlOptions: {
                    mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style']
                }
            }
        }
        map = new google.maps.Map(document.getElementById('map'), mapOptions);
        //Associate the styled map with the MapTypeId and set it to display.
        map.mapTypes.set('map_style', styledMap);
        map.setMapTypeId('map_style');
        // https://developers.google.com/maps/documentation/javascript/events
        markers = locations.map(function (location, i) {
            var marker = new google.maps.Marker({
                position: location
                , map: map
                , title: location.titre
            });
            attachSecretMessage(marker, location.infoWindow);
        });
    };
    // https://developers.google.com/maps/documentation/javascript/examples/event-closure
    function attachSecretMessage(marker, infoWindow) {
        var infowindow = new google.maps.InfoWindow({
            content: infoWindow
        });
        marker.addListener('click', function () {
            infowindow.open(marker.get('map'), marker);
        });
    }
})();