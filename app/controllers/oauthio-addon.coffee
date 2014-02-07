oauthioAddonApp = angular.module 'oauthioAddonApp', ['ngTouch']

oauthioAddonApp.controller 'SteroidsOAuthIOAddonCtrl', ($scope) ->
  steroids.view.navigationBar.show "OAuth.io"

  $scope.ready = false
  $scope.loginStatus = false

  steroids.addons.oauthio.ready.then ->
    $scope.$apply ->
      $scope.ready = true

  $scope.twitterLogin = ->
    steroids.addons.oauthio.popup('twitter').then ->
      $scope.$apply ->
        $scope.loginStatus = true

