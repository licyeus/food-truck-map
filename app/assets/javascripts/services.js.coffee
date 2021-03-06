food_truck_app.factory 'food_truck_service', ['$resource', ($resource) ->
  active_trucks = []
  all_trucks = $resource('/api/food_trucks').query ->
    angular.forEach all_trucks, (truck) ->
      active_trucks.push truck if truck.status is 'open'

  get_all_trucks: -> all_trucks

  get_active_trucks: -> active_trucks
]

food_truck_app.factory 'tag_service', ['$resource', ($resource) ->
  get_all_tags: -> $resource('/api/tags').query()
]
