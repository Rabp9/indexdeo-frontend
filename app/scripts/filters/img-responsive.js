'use strict';

/**
 * @ngdoc filter
 * @name inexdeoFrotendApp.filter:imgResponsive
 * @function
 * @description
 * # imgResponsive
 * Filter in the inexdeoFrotendApp.
 */
angular.module('inexdeoFrotendApp')
.filter('imgResponsive', function () {
    return function (input, size) {
        var ext = input.split('.').pop();
        input = input.slice(0, (input.length - ext.length - 1));
        //input = input.replace(/\..+$/, '');
        input = input + size + '.' + ext;
        return input;
    };
});
