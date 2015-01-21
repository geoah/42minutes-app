'use strict'

###*
 # @ngdoc function
 # @name appApp.controller:ShowseasonCtrl
 # @description
 # # ShowseasonCtrl
 # Controller of the appApp
###
angular.module('appApp')
  .controller 'ShowSeasonCtrl', ($scope, $state, $stateParams, Shows, Seasons, Episodes) ->
    $scope.episodes = Episodes.query(id: $stateParams.id, season: $stateParams.season)
    $scope.gotoEpisode = (episode) => $state.go 'show.season.episode', id: $stateParams.id, season: $stateParams.season, episode: episode
