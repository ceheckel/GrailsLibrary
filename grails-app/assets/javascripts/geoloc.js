/**
 * The function first locates the html elements for writing the latitude and longitude and displaying the map.
 * They are given names in the script, outputLatLong and outputMap.
 * Then the script checks if it can access the navigator.geolocation.
 * After that, it defines the callback for success and error.
 * At the bottom of the file the script first writes “Locating …” in the div to show the latitude and longitude.
 */
function geoFindMe() {
    var dynamicMap = true;

    // get HTML tags for lat and long as well as the tag for displaying the map
    var outputLatLong = document.getElementById("latlong-out");
    var outputMap = document.getElementById("map-canvas");

    // check if geolocation is available
    if (!navigator.geolocation){
        outputLatLong.innerHTML = "<p>Geolocation is not supported by your browser</p>";
        return;
    }

    // callback for success
    function success(position) {
        // get current location
        var latitude = position.coords.latitude;
        var longitude = position.coords.longitude;

        // set HTML to have current location
        outputLatLong.innerHTML = '<p>Latitude is ' + latitude + '° <br>Longitude is ' + longitude + '°</p>';

        // map image
        var img = new Image();
        img.src = "https://maps.googleapis.com/maps/api/staticmap?center=" + latitude + "," + longitude + "&zoom=13&size=300x300&sensor=false";
        outputMap.appendChild(img);
        if(dynamicMap == true) {
            var coordinates = new google.maps.LatLng(latitude, longitude);
            var mapOptions = {
                center: coordinates,
                zoom: 8
            };
            var map = new google.maps.Map(outputMap, mapOptions);

            // Set up and display the Marker
            var markerOptions = {
                map: map,
                position: coordinates,
                draggable: false,
                animation: google.maps.Animation.DROP
            };
            var maker = new google.maps.Marker(markerOptions);
        }
    }

    // callback for error
    function error() {
        outputLatLong.innerHTML = "Unable to retrieve your location";
    }

    outputLatLong.innerHTML = "<p>Locating…</p>";
    navigator.geolocation.getCurrentPosition(success, error);
}