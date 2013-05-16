module = angular.module 'cwts.map', [

]

module.directive 'tjdLeaflet', [-> {
  link: (scope, element, attrs, controller) ->
    console.log 'yoooo'
    sites = scope.$eval attrs.sites

    clat = _.reduce(sites, ((m, x) -> m + x.lat), 0)/sites.length
    clong = _.reduce(sites, ((m, x) -> m + x.long), 0)/sites.length

    map = L.map('map').setView([clat, clong], 15)
    L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png',
      attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
    ).addTo(map)
    for site in sites
      L.marker([site.lat, site.long]).addTo(map)
        .bindPopup("<a href=\"/#/sites/#{site.code}\">#{site.name}</a>")
        .openPopup()
}]

module.controller 'MapCtrl', ['$scope', ($scope) ->
  $scope.sites = [
    {
      code: 'ayala-triangle-gardens'
      name: 'Ayala Triangle Gardens'
      lat: 14.55688
      long: 121.02425
    }
    {
      code: 'monuments'
      name: 'Gabriela Silang Monument'
      lat: 14.55497
      long: 121.02427
    }
    {
      code: 'monuments'
      name: 'Ninoy Aquino Monument'
      lat: 14.55654
      long: 121.02196
    }
    {
      code: 'monuments'
      name: 'Pio del Pilar Monument'
      lat: 14.55825
      long: 121.02616
    }
    {
      code: 'monuments'
      name: 'Sultan Kudarat Monument'
      lat: 14.55771
      long: 121.02565
    }
    {
      code: 'filipinas-heritage'
      name: 'Filpinas Heritage Museum'
      lat: 14.55344
      long: 121.02338
    }
    {
      code: 'ayala-museum'
      name: 'Ayala Museum'
      lat: 14.55362
      long: 121.02311
    }
    {
      code: 'yuchengco-museum'
      name: 'Yuchengco Museum'
      lat: 14.56088
      long: 121.01626
    }
    {
      code: 'poblacion-church'
      name: 'Saints Peter and Paul Church'
      lat: 14.56575
      long: 121.03137
    }
    {
      code: 'plaza-cristo-reyes'
      name: 'Plaza Cristo Reyes'
      lat: 14.56623
      long: 121.03131
    }
    {
      code: 'guadalupe-church'
      name: 'Nuestra Se\xf1ora de Gracia Church'
      lat: 14.56605
      long: 121.04305
    }
  ]
]
