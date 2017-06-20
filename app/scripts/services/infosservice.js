'use strict';

/**
 * @ngdoc service
 * @name inexdeoFrotendApp.infosservice
 * @description
 * # infosservice
 * Factory in the inexdeoFrotendApp.
 */
angular.module('inexdeoFrotendApp')
.factory('infosservice', function($resource, envservice) {
    return $resource(envservice.getHost() + 'infos/:id.json', {}, {
        saveMany: {
            method: 'POST',
            url: envservice.getHost() + 'infos/saveMany.json',
        },
        getDataMany: {
            method: 'POST',
            url: envservice.getHost() + 'infos/getDataMany.json',
        },
        getDataByData: {
            method: 'POST',
            url: envservice.getHost() + 'infos/getDataByData.json',
        },
        getData: {
            method: 'GET',
            url: envservice.getHost() + 'infos/getData/:data.json',
        }
    });
});