'use strict'

###*
 # @ngdoc function
 # @name appApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the appApp
###
angular.module('appApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
