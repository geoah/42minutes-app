'use strict'

###*
 # @ngdoc service
 # @name appApp.login
 # @description
 # # login
 # Service in the appApp.
###
angular.module('appApp')
  .service 'Login', ($resource, Settings) ->
    $resource "#{Settings.url}/login", {},
      send:
        method: "POST"
        header: {"Content-Type":"application/x-www-form-urlencoded"}