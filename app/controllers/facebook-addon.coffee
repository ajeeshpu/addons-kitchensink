facebookAddonApp = angular.module 'facebookAddonApp', ['ngTouch']

facebookAddonApp.controller 'SteroidsFacebookAddonCtrl', ($scope) ->
  steroids.view.navigationBar.show "Facebook"

  $scope.addonsUndefined = steroids.addons is undefined

  unless $scope.addonsUndefined
    $scope.ready = false
    $scope.loginStatus = false
    $scope.firstName = "Not fetched yet."

    steroids.addons.facebook.ready.then ->
      $scope.$apply ->
        $scope.ready = true
        $scope.loginStatus = steroids.addons.facebook.session.get().userID?

    $scope.facebookLogin = ->
      steroids.addons.facebook.login(scope: 'email').then ->
        $scope.$apply ->
          $scope.loginStatus = true

    $scope.facebookGraphQuery = ->
      steroids.addons.facebook.api.get('/me', fields: 'first_name').then (response) ->
        $scope.$apply ->
          $scope.firstName = response.first_name

    $scope.facebookLogout = ->
      steroids.addons.facebook.logout().then ->
        $scope.$apply ->
          $scope.loginStatus = false
