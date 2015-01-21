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
    $resource '//localhost/shows/:id/seasons/:season'
