urbanAirshipApp = angular.module 'urbanAirshipApp', ['ngTouch']

urbanAirshipApp.controller 'SteroidsUrbanAirshipCtrl', ($scope) ->
  steroids.view.navigationBar.show "Urban Airship"

  $scope.addonsUndefined = steroids.addons is undefined

  unless $scope.addonsUndefined
    $scope.pluginready = false
    $scope.pushenabled = false
    $scope.registration = null
    $scope.notifications = []
    $scope.incoming = []

    steroids.addons.urbanairship.ready.then (PushNotification) -> 
      $scope.$apply ->
        $scope.pluginready = true

    steroids.addons.urbanairship.enabled.then ->
      $scope.$apply ->
        $scope.pushenabled = true

    steroids.addons.urbanairship.registrations.onValue (reg) ->
      $scope.$apply ->
        $scope.registration = reg

    steroids.addons.urbanairship.notifications.onValue (notification) ->
      $scope.$apply ->
        $scope.notifications.push notification

    steroids.addons.urbanairship.incoming.onValue (notification) ->
      $scope.$apply ->
        $scope.incoming.push notification

      steroids.addons.urbanairship.ready.then (PushNotification) ->
        PushNotification.resetBadge()