'use strict'

###*
 # @ngdoc overview
 # @name appApp
 # @description
 # # appApp
 #
 # Main module of the application.
###
angular
  .module('appApp', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
    'ui.router'
  ])
  .run ($rootScope, $injector, Settings) ->
    $injector.get("$http").defaults.transformRequest = (data, headersGetter) ->
      headersGetter()["x-api-token"] = Settings.token #if $rootScope.oauth
      angular.toJson data if data

  .config ($routeProvider, $stateProvider, $urlRouterProvider) ->
    $urlRouterProvider.otherwise 'shows'
    $stateProvider
      .state 'shows',
        url: '/shows'
        templateUrl: 'views/shows.html'
        controller: 'ShowsCtrl'
      .state 'show',
        url: '/shows/:id'
        templateUrl: 'views/show.html'
        controller: 'ShowCtrl'
      .state 'show.season',
        url: '/seasons/:season'
        templateUrl: 'views/show_season.html'
        controller: 'ShowSeasonCtrl'
      .state 'show.season.episode',
        url: '/episodes/:episode'
        templateUrl: 'views/show_season_episode.html'
        controller: 'ShowSeasonEpisodeCtrl'
