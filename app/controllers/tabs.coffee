tabsApp = angular.module 'tabsApp', ['TabsModel', 'ngTouch']

# Steroids Addons tab index: views/tabs/steroids-addons.html

tabsApp.controller 'SteroidsAddonsCtrl', ($scope, TabsRestangular) ->

  # Helper function for opening new webviews
  $scope.open = (url)->
    webView = new steroids.views.WebView url
    steroids.layers.push webView

  # Fetch all objects from the local JSON (see app/models/tabs.js)
  TabsRestangular.all('steroidsAddonExamples').getList().then (data)->
    $scope.steroidsAddonExamples = data

  # -- Native navigation
  steroids.view.navigationBar.show "Steroids Addons"