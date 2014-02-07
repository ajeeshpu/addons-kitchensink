facebookAddonApp = angular.module 'facebookAddonApp', ['ngTouch']

facebookAddonApp.controller 'SteroidsFacebookAddonCtrl', ($scope) ->
  steroids.view.navigationBar.show "Facebook"

  $scope.ready = false
  $scope.loginStatus = false

  steroids.addons.facebook.ready.then ->
    $scope.$apply ->
      $scope.ready = true
      $scope.loginStatus = steroids.addons.facebook.session.get().userID?

  $scope.facebookLogin = ->
    steroids.addons.facebook.login(scope: 'email').then ->
      $scope.$apply ->
        $scope.loginStatus = true

  $scope.facebookLogout = ->
    steroids.addons.facebook.logout().then ->
      $scope.$apply ->
        $scope.loginStatus = false
