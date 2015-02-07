'use strict'

###*
 # @ngdoc service
 # @name appApp.Shows
 # @description
 # # Shows
 # Factory in the appApp.
###
angular.module('appApp')
  .factory 'Shows', ($resource, $http) ->
    $resource '//localhost:8000/shows/:id', id: '@id',
      favorite:
        method: 'PUT'
        isArray: false
        transformRequest: (data, headersGetter) ->
          data.favorite = true
          return angular.toJson data
      unfavorite:
        method: 'PUT'
        isArray: false
        transformRequest: (data, headersGetter) ->
          data.favorite = false
          return angular.toJson data
      library:
        method: 'PUT'
        isArray: false
        transformRequest: (data, headersGetter) ->
          data.library = true
          return angular.toJson data
      unlibrary:
        method: 'PUT'
        isArray: false
        transformRequest: (data, headersGetter) ->
          data.library = false
          return angular.toJson data
