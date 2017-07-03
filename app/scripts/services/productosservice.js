'use strict';

/**
 * @ngdoc service
 * @name inexdeoFrotendApp.productosservice
 * @description
 * # productosservice
 * Factory in the inexdeoFrotendApp.
 */
angular.module('inexdeoFrotendApp')
.factory('productosservice', function($resource, envservice) {
    return $resource(envservice.getHost() + 'productos/:id.json', {}, {
        getRandom: {
            method: 'GET',
            url: envservice.getHost() + 'productos/getRandom/:num.json'
        }
    });
});