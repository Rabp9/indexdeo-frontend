'use strict';

/**
 * @ngdoc function
 * @name inexdeoFrotendApp.controller:ContactanosCtrl
 * @description
 * # ContactanosCtrl
 * Controller of the inexdeoFrotendApp
 */
angular.module('inexdeoFrotendApp')
.controller('ContactanosCtrl', function ($scope, infosservice, ngProgressFactory,
    imgResponsiveFilter, $sce, $rootScope) {
    $scope.infos = {};
    
    // $rootScope.layout.loading = true;
    var search = ['direccion', 'bg_contactanos'];
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
    
    $scope.getBgSrc = function(bg, size) {
        var src = $rootScope.path_location + 'img/bg/' + bg;
        return $sce.trustAsResourceUrl(imgResponsiveFilter(src, size));
    };
});
