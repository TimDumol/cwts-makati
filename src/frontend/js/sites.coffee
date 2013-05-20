"use strict"

module = angular.module 'cwts.sites', [

]

module.controller 'SitesCtrl', ['$scope', '$routeParams', ($scope, $routeParams) ->
  $scope.pageName = "/templates/#{$routeParams.siteName}.html"
]
