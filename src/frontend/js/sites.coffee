"use strict"

module = angular.module 'cwts.sites', [

]

module.controller 'SitesCtrl', ['$scope', '$routeParams', ($scope, $routeParams) ->
  DONE_SITES = [
    'ayala-triangle-gardens'
    'monuments'
  ]
  $scope.pageName = "/templates/#{(if $routeParams.siteName in DONE_SITES then $routeParams.siteName else 'under-construction')}.html"
]
