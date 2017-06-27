'use strict';

/**
 * @ngdoc function
 * @name inexdeoFrotendApp.controller:NosotrosCtrl
 * @description
 * # NosotrosCtrl
 * Controller of the inexdeoFrotendApp
 */
angular.module('inexdeoFrotendApp')
.controller('NosotrosCtrl', function ($scope, infosservice) {
    $scope.infos = {};
    
    // $rootScope.layout.loading = true;
    var search = ['mision', 'vision', 'historia'];
    $scope.infos = {};

    function getInfos() {
        infosservice.getDataMany(search, function(data) {
            angular.forEach(search, function(value, key) {
                $scope.infos[value] = data.info[value];
            });
        });
    }
    
    getInfos();
});
