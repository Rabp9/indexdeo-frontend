'use strict';

/**
 * @ngdoc function
 * @name inexdeoFrotendApp.controller:GaleriaCtrl
 * @description
 * # GaleriaCtrl
 * Controller of the inexdeoFrotendApp
 */
angular.module('inexdeoFrotendApp')
.controller('GaleriaCtrl', function ($scope, albumesservice) {
    $scope.loading = false;
    $scope.myInterval = 20000000;
    $scope.noWrapSlides = false;
    $scope.active = 0;
    
    albumesservice.get(function(data) {
        $scope.albumes = data.albumes;
        angular.forEach($scope.productos, function(value, key) {
            if (!value.portada) {
                var i = 0;
                angular.forEach(value.producto_images, function(value, key) {
                    value.index = i;
                    i++;
                });
            }
        });
    });
});