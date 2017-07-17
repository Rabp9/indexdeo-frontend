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
    $scope.myInterval = 3000;
    $scope.noWrapSlides = false;
    $scope.active = 0;
    
    albumesservice.get(function(data) {
        $scope.albumes = data.albumes;
        angular.forEach($scope.albumes, function(value, key) {
            var i = 0;
            angular.forEach(value.imagenes, function(value, key) {
                value.index = i;
                i++;
            });
        });
    });
});