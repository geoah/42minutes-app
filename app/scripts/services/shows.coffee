'use strict'

###*
 # @ngdoc service
 # @name appApp.Shows
 # @description
 # # Shows
 # Factory in the appApp.
###
angular.module('appApp')
  .factory 'Shows', (nestedResource) ->
    nestedResource "//localhost/shows",
      all:
        method: "GET"
        isArray: true
      get:
        route: "/@id"
        method: "GET"
        construct: true
        nested:
          update:
            method: "PUT"
          delete:
            method: "DELETE"

          seasons:
            method: "GET"
            route: "/seasons"
            isArray: true
            nested:
              update:
                method: "PUT"
                route: "/@season"

              episodes:
                method: "GET"
                route: "/@season/episodes"
                isArray: true
                nested:
                  update:
                    method: "PUT"
                    route: "/@season/episodes/@episode"
