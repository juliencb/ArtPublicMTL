<article class="flex tousEgal column ml50">
    <?php
   
        echo "<h1 class='ligneBas'>" . $data["titre"] . "</h1>";
        
    ?>
        <section class="flex tousEgal">
            <section class="flex row">
                <section>
                    <?php
            if($data["urlImage"]!=""){
                
        ?> <a href="./images/<?php echo $data[" urlImage "]?>.jpg"><img class="photo" src=" ./images/<?php echo $data["urlImage"]?>.jpg" alt = " <?php echo $data["titre"] ?>"/></a>
                        <?php
            }
            else{
        ?> <img class="photo" src="./images/no-image-available.jpg" alt="aucune image" />
                            <?php
            }
        ?>
                </section>
                <ul>
                    <?php
            if(($data["prenom"]&&$data["nom"]!="")&&($data["prenom"]!= null && $data["nom"]!= null )){
                echo "<li><span>Artiste: <a href='./index.php?Public&action=descriptionArtiste&id=". $data["idArtiste"] . "'>". $data["prenom"]." ".$data["nom"]. "</a></span></li>";
            }
            else{
                echo "<li><span>Atelier: ". $data["nomCollectif"]."</span></li>";
            }

            if($data["categorieObjet"]!=""){
                echo "<li><span>Catégorie: " . $data["categorieObjet"]. "</span></li>";
            }	

            if($data["categorie"]!=""){
                echo "<li><span>Sous-Catégorie: ". $data["categorie"]. "</span></li>";
            }

            if($data["parc"]!=""){
                echo "<li><span>Parc: ". $data["parc"]. "</span></li>";
            }

            if($data["materiaux"]!=""){
                echo "<li><span>Matériaux: ". $data["materiaux"]. "</span></li>";
            }

            if($data["adresseCivique"]!=""){
                echo "<li><span>Adresse :". $data["adresseCivique"]. "</span></li>";
            }

            if($data["nomArrondissement"]!=""){
                echo "<li><span>Arrondissement :<a href='./index.php?Public&action=afficheOeuvreslieu&idValue=". $data["nomArrondissement"]. "'>". $data["nomArrondissement"]. "</span></li>";
            }	
            ?>
                </ul>
            </section>
            <section class="flex tousEgal">
                <?php

            if($data["coordonneeLatitude"]!=""){
                // affiche la map goole
                //    https://developers.google.com/maps/documentation/javascript/adding-a-google-map
                //   comment mettre une map de google dans un site 
                 ?>
                    <style>
                        #map {
                            height: 600px;
                            width: 800px
                        }
                    </style>
                    <div id="map"></div>
                    <script>
                        function initMap() {
                            
                                  //style: https://snazzymaps.com/style/71052/gray-and-red
                        //documentation: https://developers.google.com/maps/documentation/javascript/styling
                        // Create an array of styles.
                      var styles = [{"featureType":"administrative","elementType":"labels","stylers":[{"visibility":"simplified"},{"color":"#ff0000"}]}
                                    ,{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"color":"#444444"}]}
                                    ,{"featureType":"administrative.country","elementType":"labels","stylers":[{"color":"#fc0505"},{"visibility":"on"}]}
                                    ,{"featureType":"administrative.province","elementType":"labels","stylers":[{"color":"#ff0000"},{"visibility":"simplified"}]}
                                    ,{"featureType":"administrative.locality","elementType":"labels","stylers":[{"color":"#ff0000"},{"visibility":"simplified"}]}
                                    ,{"featureType":"administrative.neighborhood","elementType":"labels","stylers":[{"color":"#ff0000"}
                                    ,{"visibility":"simplified"}]},{"featureType":"administrative.land_parcel","elementType":"labels","stylers":[{"color":"#ff0000"},{"visibility":"simplified"}]}
                                    ,{"featureType":"landscape","elementType":"all","stylers":[{"color":"#eaeaea"}]}
                                    ,{"featureType":"poi","elementType":"all","stylers":[{"visibility":"off"}]}
                                    ,{"featureType":"road","elementType":"all","stylers":[{"saturation": -100},{"lightness": 0}]}               //routes
                                    ,{"featureType":"road.highway","elementType":"all","stylers":[{"visibility":"simplified"}]}
                                    ,{"featureType":"road.arterial","elementType":"labels.icon","stylers":[{"visibility":"off"}]}
                                    ,{"featureType":"transit","elementType":"all","stylers":[{"visibility":"off"}]},                                    //trains
                                    {"featureType":"water","elementType":"all","stylers":[{"color":"#aaaaaa"},{"visibility":"on"}]}];

                      // Create a new StyledMapType object, passing it the array of styles,
                      // as well as the name to be displayed on the map type control.
                      var styledMap = new google.maps.StyledMapType(styles,
                        {name: "Styled Map"});

                      // Create a map object, and include the MapTypeId to add
                      // to the map type control.
                      var mapOptions = {
                        zoom: 14,
                        center: new google.maps.LatLng(<?php echo $data["coordonneeLatitude"].",". $data["coordonneeLongitude"] ?>),
                        mapTypeControlOptions: {
                          mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style']
                        }
                      };
                      var map = new google.maps.Map(document.getElementById('map'),
                        mapOptions);

                      //Associate the styled map with the MapTypeId and set it to display.
                      map.mapTypes.set('map_style', styledMap);
                      map.setMapTypeId('map_style');

                            
                            
                            var uluru = {
                                lat: <?php echo $data["coordonneeLatitude"] ?>
                                , lng: <?php echo $data["coordonneeLongitude"] ?>
                            };
                         
                            var marker = new google.maps.Marker({
                                position: uluru
                                , map: map
                                , title: <?php echo "'" . $data["titre"] ."'"?>
                            });
                        }
                    </script>
                    <script async defer src='https://maps.googleapis.com/maps/api/js?key=AIzaSyC4QkcRKk6J15A3d0lLu8SZljq6opZkBMI&callback=initMap&zoom=14'>
                    </script>
                    <?php
            }
        ?>
            </section>
        </section>
</article>