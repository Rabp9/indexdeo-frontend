'use strict';

/**
 * @ngdoc service
 * @name inexdeoFrotendApp.envservice
 * @description
 * # envservice
 * Factory in the inexdeoFrotendApp.
 */
angular.module('inexdeoFrotendApp')
.factory('envservice', function () {
    return {
        getHost: function() {
            switch (window.location.hostname) {
                case 'localhost':
                    return 'http://localhost:8000/inexdeo-backend/';
                case 'tuplast.robertobocanegra.com':
                    return 'http://tuplast.robertobocanegra.com/api/';
            }
        }
    };
});