'use strict';

/**
 * @ngdoc function
 * @name inexdeoFrotendApp.controller:ProductosCtrl
 * @description
 * # ProductosCtrl
 * Controller of the inexdeoFrotendApp
 */
angular.module('inexdeoFrotendApp')
.controller('ProductosCtrl', function ($scope, productosservice, $state, ngProgressFactory) {
    $scope.productos = [];
    $scope.loading = false;
    $scope.myInterval = 4000;
    $scope.noWrapSlides = false;
    $scope.active = 0;
    var controladorWhenVisible = 0;
    
    function init() {
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        
        $scope.loading = true;
        productosservice.get(function(data) {
            $scope.productos = data.productos;
            if ($scope.productos.length === 1) {
                $state.go('productos-detail', {id: $scope.productos[0].id});
            } else {
                angular.forEach($scope.productos, function(value, key) {
                    if (!value.portada) {
                        var i = 0;
                        angular.forEach(value.producto_images, function(value, key) {
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