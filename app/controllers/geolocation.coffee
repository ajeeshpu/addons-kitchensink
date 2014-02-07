geolocationAddonApp = angular.module 'geolocationAddonApp', ['ngTouch', 'ngSanitize']

geolocationAddonApp.controller 'SteroidsGeolocationAddonCtrl', ($scope) ->
  steroids.view.navigationBar.show "Geolocation"
  $scope.position = "Waiting for geolocation data..."
  
  # APIs without Steroids Addons require manual initialization every time to ensure they're ready.
  # Steroids Addons are available instantly in all WebViews.

  positions = steroids.addons.geolocation.watchPosition();

  # This is a stream of incoming values from the GPS. You'll get a new value every time the position is updated.

  positions.onValue (position) ->
    console.log "We've got a position!"


  # You can react to failures if you want, but you can also choose to focus on the happy path.

  positions.onError (error) ->
    alert "Couldn't get position! \n\n Error code: #{error.code}\n Error message: #{error.message}"

  # Let's do something with the position data we get. How about formatting it as HTML?

  formattedPositions = positions.map( (position) ->
    '<strong>Latitude:</strong> '           + position.coords.latitude         + '<br>' +
    '<strong>Longitude:</strong> '          + position.coords.longitude        + '<br>' +
    '<strong>Altitude:</strong> '           + position.coords.altitude         + '<br>' +
    '<strong>Accuracy:</strong> '           + position.coords.accuracy         + '<br>' +
    '<strong>Altitude Accuracy:</strong> '  + position.coords.altitudeAccuracy + '<br>' +
    '<strong>Heading:</strong> '            + position.coords.heading          + '<br>' +
    '<strong>Speed:</strong> '              + position.coords.speed            + '<br>' +
    '<strong>Timestamp:</strong> '          + position.timestamp;
  )

  # Alright, that's pretty basic. Now we're ready to put our results somewhere the user can see them.

  formattedPositions.onValue (formattedPosition) ->
    $scope.$apply ->
      $scope.position = formattedPosition
