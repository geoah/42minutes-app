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
    $resource "#{Settings.url}/shows/:id", {},
      search: method: 'GET', isArray:true

