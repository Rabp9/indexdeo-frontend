'use strict';

/**
 * @ngdoc function
 * @name inexdeoFrotendApp.controller:ProductosDetailCtrl
 * @description
 * # ProductosDetailCtrl
 * Controller of the inexdeoFrotendApp
 */
angular.module('inexdeoFrotendApp')
.controller('ProductosDetailCtrl', function ($scope, $stateParams, $rootScope, productosservice) {
    var id = $stateParams.id;
    $scope.loading = false;
    $scope.myInterval = 4000;
    $scope.noWrapSlides = false;
    $scope.active = 0;
    
    function init() {
        $scope.loading = true;
        productosservice.get({id: id}, function(data) {
            $scope.producto = data.producto;    
            
            var i = 0;
            angular.forEach($scope.producto.producto_images, function(value, key) {
                value.index = i;
                i++;
            });
            
            $rootScope.title = $scope.producto.title;
            $scope.loading = false;
        });
    }
    
    init();
});