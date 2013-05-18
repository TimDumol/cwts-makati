"use strict"

module = angular.module 'cwts.sites', [

]

module.controller 'SitesCtrl', ['$scope', '$routeParams', ($scope, $routeParams) ->
  DONE_SITES = [
    'ayala-triangle-gardens'
    'monuments'
    'poblacion-church'
    'guadalupe-church'
    'ayala-museum'
    'filipinas-heritage'
  ]
  $scope.pageName = "/templates/#{(if $routeParams.siteName in DONE_SITES then $routeParams.siteName else 'under-construction')}.html"
]
