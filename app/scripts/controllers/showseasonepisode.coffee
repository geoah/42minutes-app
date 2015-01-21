'use strict'

###*
 # @ngdoc function
 # @name appApp.controller:ShowseasonepisodeCtrl
 # @description
 # # ShowseasonepisodeCtrl
 # Controller of the appApp
###
angular.module('appApp')
  .controller 'ShowSeasonEpisodeCtrl', ($scope, $stateParams, Episodes) ->
    $scope.episode = Episodes.get(id: $stateParams.id, season: $stateParams.season, episode: $stateParams.episode)
