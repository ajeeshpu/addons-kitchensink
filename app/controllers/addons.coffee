addonsApp = angular.module 'addonsApp', ['ngTouch']

addonsApp.controller 'SteroidsAddonsCtrl', ($scope) ->

  # Helper function for opening new webviews
  $scope.open = (url)->
    webView = new steroids.views.WebView url
    steroids.layers.push webView

  $scope.steroidsAddonExamples = [
    {
      example_id: 1
      name: "OAuth.io Add-on"
      url: "/views/oauthio-addon/oauthio-addon.html"
    }
    {
      example_id: 2
      name: "Facebook Add-on"
      url: "/views/facebook-addon/facebook-addon.html"
    }
    {
      example_id: 3
      name: "Geolocation Add-on"
      url: "/views/geolocation/geolocation.html"
    }
  ]

  # -- Native navigation
  steroids.view.navigationBar.show "Steroids Addons"