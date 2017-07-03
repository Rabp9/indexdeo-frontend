'use strict';

/**
 * @ngdoc function
 * @name inexdeoFrotendApp.controller:ContactanosCtrl
 * @description
 * # ContactanosCtrl
 * Controller of the inexdeoFrotendApp
 */
angular.module('inexdeoFrotendApp')
.controller('ContactanosCtrl', function ($scope, infosservice, ngProgressFactory) {
    $scope.infos = {};
    
    // $rootScope.layout.loading = true;
    var search = ['direccion'];
    $scope.infos = {};

    function getInfos() {
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        
        infosservice.getDataMany(search, function(data) {
            angular.forEach(search, function(value, key) {
                $scope.infos[value] = data.info[value];
            });
        });
        $scope.progressbar.complete();
    }
    
    getInfos();
});
