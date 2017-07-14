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
                case 'inexdeo.robertobocanegra.com':
                    return 'http://inexdeo.robertobocanegra.com/api/';
                case 'iedsa.com.pe':
                    return 'http://iedsa.com.pe/api/';
                case 'www.iedsa.com.pe':
                    return 'http://iedsa.com.pe/api/';
            }
        }
    };
});