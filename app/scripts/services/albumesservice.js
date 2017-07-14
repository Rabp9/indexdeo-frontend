'use strict';

/**
 * @ngdoc service
 * @name inexdeoFrotendApp.albumesservice
 * @description
 * # albumesservice
 * Factory in the inexdeoFrotendApp.
 */
angular.module('inexdeoFrotendApp')
.factory('albumesservice', function($resource, envservice) {
    return $resource(envservice.getHost() + 'albumes/:id.json', {}, {
    });
});