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

    $scope.$watch 'searchTerm', (newVal, OldVal) =>
      $scope.shows = Shows.query() if newVal is ""

    $scope.gotoShow = (id) => $state.go 'show', id: id

    $scope.clear = () =>
      $scope.shows = Shows.query()

    $scope.searchShow = () =>
      $scope.shows = Shows.search name: $scope.searchTerm
