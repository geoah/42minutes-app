'use strict'

###*
 # @ngdoc service
 # @name appApp.Shows
 # @description
 # # Shows
 # Factory in the appApp.
###
angular.module('appApp')
  .factory 'Shows', ($resource) ->
    $resource '//localhost/shows/:id'
