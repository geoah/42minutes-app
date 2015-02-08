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
  .config ($routeProvider, $stateProvider, $urlRouterProvider, $httpProvider ) ->
    $urlRouterProvider.otherwise 'shows'
    $stateProvider
      .state 'login',
        url: '/login'
        templateUrl: 'views/login.html'
        controller: 'LoginCtrl'
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

    $httpProvider.interceptors.push (Settings) ->
      {
        request: (config) ->
          config.headers["x-api-token"] = Settings.token #if $rootScope.oauth
          return config
      }
