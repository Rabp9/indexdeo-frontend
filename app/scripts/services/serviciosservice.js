'use strict';

/**
 * @ngdoc service
 * @name inexdeoFrotendApp.serviciosservice
 * @description
 * # serviciosservice
 * Factory in the inexdeoFrotendApp.
 */
angular.module('inexdeoFrotendApp')
.factory('serviciosservice', function($resource, envservice) {
    return $resource(envservice.getHost() + 'servicios/:id.json', {}, {
        getRandom: {
            method: 'GET',
            url: envservice.getHost() + 'servicios/getRandom/:num.json'
        }
    });
});