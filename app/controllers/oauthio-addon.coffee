oauthioAddonApp = angular.module 'oauthioAddonApp', ['ngTouch']

oauthioAddonApp.controller 'SteroidsOAuthIOAddonCtrl', ($scope) ->
  steroids.view.navigationBar.show "OAuth.io"

  $scope.addonsUndefined = steroids.addons is undefined

  unless $scope.addonsUndefined
    $scope.ready = false
    $scope.loginStatus = false
    $scope.userName = false

    steroids.addons.oauthio.ready.then ->
      $scope.$apply ->
        $scope.ready = true

    $scope.twitterLogin = ->
      provider = steroids.addons.oauthio.provider('twitter')
      provider.auth().then ->
        $scope.$apply ->
          $scope.loginStatus = true

        provider.api
          .get('/1.1/account/verify_credentials.json')
          .then(JSON.parse)
          .then (user) ->
            $scope.$apply ->
              $scope.userName = user.name
