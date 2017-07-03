'use strict';

/**
 * @ngdoc function
 * @name inexdeoFrotendApp.controller:ProyectosDetailCtrl
 * @description
 * # ProyectosDetailCtrl
 * Controller of the inexdeoFrotendApp
 */
angular.module('inexdeoFrotendApp')
.controller('ProyectosDetailCtrl', function ($scope, $stateParams, $rootScope, proyectosservice) {
    var id = $stateParams.id;
    $scope.loading = false;
    $scope.myInterval = 4000;
    $scope.noWrapSlides = false;
    $scope.active = 0;
    
    function init() {
        $scope.loading = true;
        proyectosservice.get({id: id}, function(data) {
            $scope.proyecto = data.proyecto;    
            
            var i = 0;
            angular.forEach($scope.proyecto.proyecto_images, function(value, key) {
                value.index = i;
                i++;
            });
            
            $rootScope.title = $scope.proyecto.title;
            $scope.loading = false;
        });
    }
    
    init();
});