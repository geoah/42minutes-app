'use strict'

###*
 # @ngdoc function
 # @name appApp.controller:ShowsCtrl
 # @description
 # # ShowsCtrl
 # Controller of the appApp
###
angular.module('appApp')
  .controller 'ShowsCtrl', ($scope, $state, Shows) ->
    $scope.shows = Shows.query()
    $scope.gotoShow = (id) => $state.go 'show', id: id
