'use strict'

###*
 # @ngdoc function
 # @name appApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the appApp
###
angular.module('appApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
