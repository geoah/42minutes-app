'use strict'

###*
 # @ngdoc service
 # @name appApp.Seasons
 # @description
 # # Seasons
 # Factory in the appApp.
###
angular.module('appApp')
  .factory 'Seasons', ($resource, Settings) ->
    $resource "#{Settings.url}/shows/:id/seasons/:season"
