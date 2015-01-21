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
    'ngNestedResource'
  ])
  .run ($rootScope, $injector) ->
    $injector.get("$http").defaults.transformRequest = (data, headersGetter) ->
      headersGetter()["x-api-token"] = "7de81a84-9f26-4c8a-ad46-9acd013c4929" #if $rootScope.oauth
      angular.toJson data if data

  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .otherwise
        redirectTo: '/'
