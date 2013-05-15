"use strict"

module = angular.module 'cwts.routes', [
  'cwts.home'
  'cwts.sites'
  'cwts.map'
]

module.config ['$routeProvider', ($routeProvider) ->
  $routeProvider
    .when('/',
      templateUrl: '/templates/home.html'
      controller: 'HomeCtrl'
    ).when('/404',
      templateUrl: '/templates/404.html'
    ).when('/sites/:siteName',
      templateUrl: '/templates/sites.html'
      controller: 'SitesCtrl'
    ).when('/map',
      templateUrl: '/templates/map.html'
      controller: 'MapCtrl'
    ).otherwise(
      redirectTo: '/404'
    )
]
