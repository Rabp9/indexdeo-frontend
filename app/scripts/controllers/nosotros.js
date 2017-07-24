'use strict';

/**
 * @ngdoc function
 * @name inexdeoFrotendApp.controller:NosotrosCtrl
 * @description
 * # NosotrosCtrl
 * Controller of the inexdeoFrotendApp
 */
angular.module('inexdeoFrotendApp')
.controller('NosotrosCtrl', function ($scope, infosservice, ngProgressFactory, 
    imgResponsiveFilter, $sce, $rootScope) {
    $scope.infos = {};
    
    // $rootScope.layout.loading = true;
    var search = ['mision', 'vision', 'historia', 'bg_mision', 'bg_historia'];
    $scope.infos = {};

    function init() {
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        infosservice.getDataMany(search, function(data) {
            angular.forEach(search, function(value, key) {
                $scope.infos[value] = data.info[value];
            });
            $scope.progressbar.complete();
        });
    }
    
    init();
    
    $scope.getBgSrc = function(bg, size) {
        var src = $rootScope.path_location + 'img/bg/' + bg;
        return $sce.trustAsResourceUrl(imgResponsiveFilter(src, size));
    };
});
