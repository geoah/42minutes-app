'use strict'

###*
 # @ngdoc function
 # @name appApp.controller:ShowCtrl
 # @description
 # # ShowCtrl
 # Controller of the appApp
###
angular.module('appApp')
  .controller 'ShowCtrl', ($scope, $state, $stateParams, Shows, Seasons) ->
    $scope.show = Shows.get(id: $stateParams.id)
    $scope.seasons = Seasons.query(id: $stateParams.id)
    $scope.gotoSeason = (season) => $state.go 'show.season', {showId: $stateParams.showId, season: season}
