   var geocoder;
    var map, cloud;
    var counter = 0;
    var markers = [];
    var locations = [];



    locations[0] = new google.maps.LatLng(10.32522, 10.07002);
    locations[1] = new google.maps.LatLng(20.32522, 10.07002);
    locations[2] = new google.maps.LatLng(30.32522, 10.07002);
    locations[3] = new google.maps.LatLng(10.32522, 20.07002);
    locations[4] = new google.maps.LatLng(20.32522, 20.07002);
    locations[5] = new google.maps.LatLng(30.32522, 20.07002);
    locations[6] = new google.maps.LatLng(10.32522, 30.07002);
    locations[7] = new google.maps.LatLng(20.32522, 30.07002);
    locations[8] = new google.maps.LatLng(30.32522, 30.07002);
    locations[9] = new google.maps.LatLng(10.32522, 40.07002);
    locations[10] = new google.maps.LatLng(20.32522, 40.07002);
    locations[11] = new google.maps.LatLng(30.32522, 40.07002);
    locations[12] = new google.maps.LatLng(10.32522, 50.07002);
    locations[13] = new google.maps.LatLng(20.32522, 50.07002);
    locations[14] = new google.maps.LatLng(30.32522, 50.07002);
    locations[15] = new google.maps.LatLng(10.32522, 60.07002);
    locations[16] = new google.maps.LatLng(20.32522, 60.07002);
    locations[17] = new google.maps.LatLng(30.32522, 60.07002);


    var image = new google.maps.MarkerImage(
        'http://www.bookyourparis.com/images-site/beachflag.png',
        new google.maps.Size(28,54),
        new google.maps.Point(0,0),
        new google.maps.Point(14,54)
    );

    function init()
    {
        //alert(locations.length);
        geocoder = new google.maps.Geocoder();
        var latlng = new google.maps.LatLng(-34.397, 150.644);
        var myOptions = {
            zoom: 2,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        map = new google.maps.Map(document.getElementById('map_canvas'), myOptions);

        for (var i = 0; i < locations.length; i++) {
            makeMarker(locations[i]);
        }

    }

   

    function makeMarker(location) 
    {


        //geocoder.geocode( { 'address': location}, function(results, status) {
          //  if (status == google.maps.GeocoderStatus.OK) {
                //map.setCenter(results[0].geometry.location);
                var marker = new google.maps.Marker({
                    map: map, 
                    icon: image,
                    position: location//results[0].geometry.location
                });
                markers.push(marker);

                //alert(results[0].formatted_address);
                var contentString = 'Content comes here';

                var infowindow = new google.maps.InfoWindow({
                    content: contentString
                });

                google.maps.event.addListener(marker, 'mouseover', function() {
                    infowindow.open(map,this);
                });

                google.maps.event.addListener(marker, 'mouseout', function() {
                    infowindow.close(map,this);
                });
            //}
        //});


    }
    google.maps.event.addDomListener(window, 'load', init);