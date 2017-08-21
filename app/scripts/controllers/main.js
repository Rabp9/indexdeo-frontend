'use strict';

/**
 * @ngdoc function
 * @name inexdeoFrotendApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the inexdeoFrotendApp
 */
angular.module('inexdeoFrotendApp')
.controller('MainCtrl', function ($scope, infosservice, $q, productosservice, 
    serviciosservice, proyectosservice, ngProgressFactory, $rootScope, imgResponsiveFilter, $sce) {
    
    $scope.myInterval = 4000;
    $scope.noWrapSlides = false;
    $scope.active = 0;
    $scope.infos = {};
    $scope.video = {
        width: '75%',
        height: '75%',
        autoScale: false,
        transitionIn: 'none',
        transitionOut: 'none',
        type: 'iframe'
    };
      
    function shuffleArray(array) {
        for (var i = array.length - 1; i > 0; i--) {
            var j = Math.floor(Math.random() * (i + 1));
            var temp = array[i];
            array[i] = array[j];
            array[j] = temp;
        }
        return array;
    }
    
    $scope.$watch('waypoints.wp1.on', function(newValue, oldValue) {
        if (newValue) {
            $('nav.navbar').removeClass('navbar-transparent');
        } else {
            $('nav.navbar').addClass('navbar-transparent');
        }
    });
    function init() {
        
        $scope.progressbar = ngProgressFactory.createInstance();
        $scope.progressbar.start();
        $rootScope.layout.loading = true;
        var search = ['promo_inexdeo', 'quienes_somos', 'productos_mensaje', 'servicios_mensaje', 
            'proyectos_mensaje', 'video', 'bg_quienes_somos', 'bg_contactanos', 'bg_hero', 'video'];
        $scope.infos = {};
        
        return $q.all([
            infosservice.getDataMany(search).$promise,
            productosservice.getRandom({'num': 3}).$promise,
            serviciosservice.getRandom({'num': 3}).$promise,
            proyectosservice.getRandom({'num': 2}).$promise,
        ]).then(function(data) {
            // Infos
            angular.forEach(search, function(value, key) {
                $scope.infos[value] = data[0].info[value];
            });
            
            // Productos
            $scope.slides = [];
            angular.forEach(data[1].productos, function(value, key) {
                value.tipo = 'productos';
            });
            angular.forEach(data[2].servicios, function(value, key) {
                value.tipo = 'servicios';
            });
            angular.forEach(data[3].proyectos, function(value, key) {
                value.tipo = 'proyectos';
            });
            $scope.slides = data[1].productos.concat(data[2].servicios, data[3].proyectos);
            $scope.slides = shuffleArray($scope.slides);
            var i = 0;
            angular.forEach($scope.slides, function(value, key) {
                value.index = i;
                i++;
            });
            
            $scope.progressbar.complete();
            $rootScope.layout.loading = false;
        });
    }
    
    init();
    
    $scope.getSlideSrc = function(slide, size) {
        var src = $rootScope.path_location + 'img/' + slide.tipo + '/' + slide.img_portada;
        return $sce.trustAsResourceUrl(imgResponsiveFilter(src, size));
    }
    
    $scope.getBgSrc = function(bg, size) {
        var src = $rootScope.path_location + 'img/bg/' + bg;
        return $sce.trustAsResourceUrl(imgResponsiveFilter(src, size));
    }       
    $scope.video = {
        'width'				: '75%',
        'height'			: '75%',
        'autoScale'     	: false,
        'transitionIn'		: 'none',
        'transitionOut'		: 'none',
        'type'				: 'iframe'
    };
});
