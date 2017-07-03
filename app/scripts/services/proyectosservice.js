'use strict';

/**
 * @ngdoc service
 * @name inexdeoFrotendApp.proyectosservice
 * @description
 * # proyectosservice
 * Factory in the inexdeoFrotendApp.
 */
angular.module('inexdeoFrotendApp')
.factory('proyectosservice', function($resource, envservice) {
    return $resource(envservice.getHost() + 'proyectos/:id.json', {}, {
        getRandom: {
            method: 'GET',
            url: envservice.getHost() + 'proyectos/getRandom/:num.json'
        }
    });
});
