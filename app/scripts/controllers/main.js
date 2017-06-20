'use strict';

/**
 * @ngdoc function
 * @name inexdeoFrotendApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the inexdeoFrotendApp
 */
angular.module('inexdeoFrotendApp')
.controller('MainCtrl', function ($scope, $rootScope, infosservice, $q) {
    $scope.infos = {};
    
    function init() {
        // $rootScope.layout.loading = true;
        var search = ['promo_inexdeo'];
        $scope.infos = {};
        
        return $q.all([
            infosservice.getDataMany(search).$promise,
        ]).then(function(data) {
            // Infos
            angular.forEach(search, function(value, key) {
                $scope.infos[value] = data[0].info[value];
            });
        });
    }
    
    init();
});
