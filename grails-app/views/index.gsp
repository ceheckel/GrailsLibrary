<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="site"/>
        <title>Book Store Home</title>

        <!-- adds the geo location javascript file to the assets pipeline -->
        <asset:javascript src="geoloc.js"/>
    </head>

    <body>
        <div class="jumbotron jumb-margin">
            <div class="container">
                <h1 class="text-center">Book Store</h1>
            </div>
        </div>

        <p>Under construction</p>
        <p>
            <g:link controller="controllerList">Go to ControllerList</g:link>
        </p>

        <!-- Simple Ajax link to show time -->
        <g:link controller="home" action="showTime" elementId="timeLink"><br/>Show the time!</g:link>
        <div id="time"> time </div>

        <!-- Simple Ajax link to show most recent book -->
        <g:link controller="home" action="mostRecentBook" elementId="mostRecentBookLink"><br/>Most Recent Book</g:link>
        <div id="mostRecent"> mostRecent </div>

        <!-- Simple get location -->
        <p style="margin-top:20px"><button onclick="geoFindMe()" >Show my location</button></p>
        <div id="latlong-out"></div>
        <div id="map-canvas" style="width:500px; height:400px"></div>

        %{--GoogleMaps API--}%
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>
    </body>
</html>