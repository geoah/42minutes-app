'use strict'

###*
 # @ngdoc service
 # @name appApp.Shows
 # @description
 # # Shows
 # Factory in the appApp.
###
angular.module('appApp')
  .factory 'Shows', ($resource, Settings) ->
    $resource "#{Settings.url}/shows/:id", {id: '@id'},
      search:
        method: 'GET'
        isArray: true
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
