'use strict';

/**
 * @ngdoc function
 * @name inexdeoFrotendApp.controller:GaleriaCtrl
 * @description
 * # GaleriaCtrl
 * Controller of the inexdeoFrotendApp
 */
angular.module('inexdeoFrotendApp')
.controller('GaleriaCtrl', function ($scope, albumesservice, $state) {
    $scope.loading = false;
    $scope.myInterval = 3000;
    $scope.noWrapSlides = false;
    $scope.active = 0;
    
    albumesservice.get(function(data) {
        $scope.albumes = data.albumes;
        if ($scope.albumes.length > 0) {
            $state.go('galeria.detail', {id: $scope.albumes[0].id});
        }
    });
});