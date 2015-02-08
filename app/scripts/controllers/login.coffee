'use strict'

###*
 # @ngdoc function
 # @name appApp.controller:LoginCtrl
 # @description
 # # LoginCtrl
 # Controller of the appApp
###
angular.module('appApp')
  .controller 'LoginCtrl', ($scope, Login) ->
    $scope.submit = () =>
      console.log $scope.form
      Login.send( email:$scope.form.email, password:$scope.form.password ).$promise.then (data) =>
        console.log data