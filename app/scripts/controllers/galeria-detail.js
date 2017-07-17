'use strict';

/**
 * @ngdoc function
 * @name inexdeoFrotendApp.controller:GaleriaDetailCtrl
 * @description
 * # GaleriaDetailCtrl
 * Controller of the inexdeoFrotendApp
 */
angular.module('inexdeoFrotendApp')
.controller('GaleriaDetailCtrl', function ($scope, $stateParams, $rootScope, albumesservice, ngProgressFactory) {
    var id = $stateParams.id;
    
    function init() {
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        
        $scope.loading = true;
        albumesservice.get({id: id}, function(data) {
            $scope.album = data.album;    
            
            $rootScope.title = $scope.album.descripcion;
            $scope.loading = false;
            
            $scope.progressbar.complete();
        });
    }
    init();
});