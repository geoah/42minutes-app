'use strict'

###*
 # @ngdoc service
 # @name appApp.Seasons
 # @description
 # # Seasons
 # Factory in the appApp.
###
angular.module('appApp')
  .factory 'Seasons', ($resource) ->
    $resource '//localhost:8000/shows/:id/seasons/:season'
