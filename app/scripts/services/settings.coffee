'use strict'

###*
 # @ngdoc service
 # @name appApp.Settings
 # @description
 # # Settings
 # Service in the appApp.
###
angular.module('appApp')
  .service 'Settings', ->
    return {
      url: "//localhost:8000",
    }