<style>
    #map{
        height: 400px;
        width: 800px
    }
</style>
<div id="map"></div>
<script>
    function initMap() {

        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 12
            // met le centre de la map sur la dernière oeuvre entrée
            , center: {
                lat: <?php echo $oeuvres["coordonneeLatitude"] ?>
                , lng: <?php echo $oeuvres["coordonneeLongitude"] ?>
            }
        });
        var b = 0;
        // https://developers.google.com/maps/documentation/javascript/events
        var markers = locations.map(function (location, i) {

            var titre = document.querySelectorAll(".listeOeuvreParArron >li")[b].firstChild.innerHTML.toString();
            //var idDeLOeuvreMarquee = document.querySelectorAll(".listeOeuvreParArron >li")[b].firstChild.getAttribute("id").toString();
       console.log(location);
            var marker = new google.maps.Marker({
                position: location
                , map: map
                , title: titre
            });

            attachSecretMessage(marker, location.infoWindow);
            b++;
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
</script>
<script async defer src='https://maps.googleapis.com/maps/api/js?key=AIzaSyC4QkcRKk6J15A3d0lLu8SZljq6opZkBMI&callback=initMap'>
</script>