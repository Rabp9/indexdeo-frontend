'use strict';

/**
 * @ngdoc function
 * @name inexdeoFrotendApp.controller:ServiciosDetailCtrl
 * @description
 * # ServiciosDetailCtrl
 * Controller of the inexdeoFrotendApp
 */
angular.module('inexdeoFrotendApp')
.controller('ServiciosDetailCtrl', function ($scope, $stateParams, $rootScope, serviciosservice, ngProgressFactory) {
    var id = $stateParams.id;
    $scope.loading = false;
    $scope.myInterval = 4000;
    $scope.noWrapSlides = false;
    $scope.active = 0;
    
    function init() {
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        
        $scope.loading = true;
        serviciosservice.get({id: id}, function(data) {
            $scope.servicio = data.servicio;    
            
            var i = 0;
            angular.forEach($scope.servicio.servicio_images, function(value, key) {
                value.index = i;
                i++;
            });
            
            $rootScope.title = $scope.servicio.title;
            $scope.loading = false;
            $scope.progressbar.complete();
        });
    }
    
    init();
});