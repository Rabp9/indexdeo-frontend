'use strict';

/**
 * @ngdoc function
 * @name inexdeoFrotendApp.controller:GaleriaCtrl
 * @description
 * # GaleriaCtrl
 * Controller of the inexdeoFrotendApp
 */
angular.module('inexdeoFrotendApp')
.controller('GaleriaCtrl', function () {
$(document).ready(function() {

    /* This is basic - uses default settings */

    $("a#single_image").fancyboxPlus();

    /* Using custom settings */

    $("a#inline").fancyboxPlus({
    'hideOnContentClick': true
    });

    /* Apply fancybox to multiple items */

    $("a.grouped_elements").fancyboxPlus({
    'transitionIn' : 'elastic',
    'transitionOut' : 'elastic',
    'speedIn' : 600,
    'speedOut' : 200,
    'overlayShow' : false
    });

    });
});