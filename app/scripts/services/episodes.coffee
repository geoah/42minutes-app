'use strict'

###*
 # @ngdoc service
 # @name appApp.Episodes
 # @description
 # # Episodes
 # Factory in the appApp.
###
angular.module('appApp')
  .factory 'Episodes', ($resource, Settings) ->
    $resource "#{Settings.url}/shows/:id/seasons/:season/episodes/:episode"
