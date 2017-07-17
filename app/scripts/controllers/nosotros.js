'use strict';

/**
 * @ngdoc function
 * @name inexdeoFrotendApp.controller:NosotrosCtrl
 * @description
 * # NosotrosCtrl
 * Controller of the inexdeoFrotendApp
 */
angular.module('inexdeoFrotendApp')
.controller('NosotrosCtrl', function ($scope, infosservice, ngProgressFactory) {
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
});
