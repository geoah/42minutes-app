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
      token: "7de81a84-9f26-4c8a-ad46-9acd013c4929"
    }