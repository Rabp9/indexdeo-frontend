'use strict';

/**
 * @ngdoc function
 * @name inexdeoFrotendApp.controller:ServiciosCtrl
 * @description
 * # ServiciosCtrl
 * Controller of the inexdeoFrotendApp
 */
angular.module('inexdeoFrotendApp')
.controller('ServiciosCtrl', function ($scope, serviciosservice, $state, ngProgressFactory) {
    $scope.servicios = [];
    $scope.loading = false;
    $scope.myInterval = 4000;
    $scope.noWrapSlides = false;
    $scope.active = 0;
    var controladorWhenVisible = 0;
    
    function init() {
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        
        $scope.loading = true;
        serviciosservice.get(function(data) {
            $scope.servicios = data.servicios;
            if ($scope.servicios.length === 1) {
                $state.go('servicios-detail', {id: $scope.servicios[0].id});
            } else {
                angular.forEach($scope.servicios, function(value, key) {
                    if (!value.portada) {
                        var i = 0;
                        angular.forEach(value.servicio_images, function(value, key) {
                            value.index = i;
                            i++;
                        });
                    }
                });
            }
            $scope.loading = false;
            $scope.progressbar.complete();
        });
    }
    init();
    
    $scope.animateElementIn = function($el) {
        $el.removeClass('not-visible');
        $el.addClass('animated fadeInUp');
    };

    $scope.animateElementOut = function($el) {
        if (controladorWhenVisible !== 5) {
            $el.addClass('not-visible');
            $el.removeClass('animated fadeInUp');
            controladorWhenVisible++;
        }
    };
});