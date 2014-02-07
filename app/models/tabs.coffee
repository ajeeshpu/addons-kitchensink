# Protects views where angular is not loaded from errors
if typeof angular is 'undefined'
  return

tabsModule = angular.module 'TabsModel', ['restangular']

tabsModule.factory 'TabsRestangular', (Restangular) ->

  Restangular.withConfig (RestangularConfigurer) ->

    RestangularConfigurer.setBaseUrl 'http://localhost/data'
    RestangularConfigurer.setRequestSuffix '.json'
    RestangularConfigurer.setRestangularFields(
      id: "example_id"
      name: "name"
      url: "url"
    )
