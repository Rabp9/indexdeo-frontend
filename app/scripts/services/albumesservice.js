'use strict';

/**
 * @ngdoc service
 * @name inexdeoFrotendApp.albumesservice
 * @description
 * # albumesservice
 * Factory in the inexdeoFrotendApp.
 */
angular.module('inexdeoFrotendApp')
  .factory('albumesservice', function () {
    // Service logic
    // ...

    var meaningOfLife = 42;

    // Public API here
    return {
      someMethod: function () {
        return meaningOfLife;
      }
    };
  });
