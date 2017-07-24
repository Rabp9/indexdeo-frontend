'use strict';

/**
 * @ngdoc overview
 * @name inexdeoFrotendApp
 * @description
 * # inexdeoFrotendApp
 *
 * Main module of the application.
 */
angular
.module('inexdeoFrotendApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngTouch',
    'ui.router',
    'ui.bootstrap',
    'zumba.angular-waypoints',
    'ngProgress',
    'fancyboxplus',
    'ngPicturefill'
])
.config(function($stateProvider, $urlRouterProvider) {
    var mainState = {
        name: 'main',
        url: '/',
        templateUrl: 'views/main.html',
        controller: 'MainCtrl',
        controllerAs: 'main',
        title: 'Home'
    };

    var nosotrosState = {
        name: 'nosotros',
        url: '/nosotros',
        templateUrl: 'views/nosotros.html',
        controller: 'NosotrosCtrl',
        controllerAs: 'nosotros',
        title: 'Nosotros'
    };
    
    var contactanosState = {
        name: 'contactanos',
        url: '/contactanos',
        templateUrl: 'views/contactanos.html',
        controller: 'ContactanosCtrl',
        controllerAs: 'contactanos',
        title: 'Contáctanos'
    };

    var productosState = {
        name: 'productos',
        url: '/productos',
        templateUrl: 'views/productos.html',
        controller: 'ProductosCtrl',
        controllerAs: 'productos',
        title: 'Productos'
    };
    
    var productosDetailState = {
        name: 'productos-detail',
        url: '/productos/{id}',
        templateUrl: 'views/productos-detail.html',
        controller: 'ProductosDetailCtrl',
        controllerAs: 'productosDetail',
        params: {
            id: {
                value: '1'
            }
        }
    };
    
    var serviciosState = {
        name: 'servicios',
        url: '/servicios',
        templateUrl: 'views/servicios.html',
        controller: 'ServiciosCtrl',
        controllerAs: 'servicios',
        title: 'Servicios'
    };
    
    var serviciosDetailState = {
        name: 'servicios-detail',
        url: '/servicios/{id}',
        templateUrl: 'views/servicios-detail.html',
        controller: 'ServiciosDetailCtrl',
        controllerAs: 'serviciosDetail',
        params: {
            id: {
                value: '1'
            }
        }
    };
        
    var proyectosState = {
        name: 'proyectos',
        url: '/proyectos',
        templateUrl: 'views/proyectos.html',
        controller: 'ProyectosCtrl',
        controllerAs: 'proyectos',
        title: 'Proyectos'
    };
    
    var proyectosDetailState = {
        name: 'proyectos-detail',
        url: '/proyectos/{id}',
        templateUrl: 'views/proyectos-detail.html',
        controller: 'ProyectosDetailCtrl',
        controllerAs: 'proyectosDetail',
        params: {
            id: {
                value: '1'
            }
        }
    };
    
    var galeriaState = {
        name: 'galeria',
        url: '/galeria',
        templateUrl: 'views/galeria.html',
        controller: 'GaleriaCtrl',
        controllerAs: 'galeria',
        title: 'Galería'
    };
    
    var galeriaDetailState = {
        name: 'galeria.detail',
        url: '/{id}',
        templateUrl: 'views/galeria-detail.html',
        controller: 'GaleriaDetailCtrl',
        controllerAs: 'galeriaDetail',
        params: {
            id: {
                value: '1'
            }
        }
    };
    
    var pagesState = {
        name: 'pages',
        url: '/pages/{id}',
        templateUrl: 'views/pages.html',
        controller: 'PagesCtrl',
        controllerAs: 'pages',
        params: {
            id: {
                value: '1'
            }
        }
    };
    
    $stateProvider.state(mainState);
    $stateProvider.state(nosotrosState);
    $stateProvider.state(contactanosState);
    $stateProvider.state(productosState);
    $stateProvider.state(productosDetailState);
    $stateProvider.state(serviciosState);
    $stateProvider.state(serviciosDetailState);
    $stateProvider.state(proyectosState);
    $stateProvider.state(proyectosDetailState);
    $stateProvider.state(galeriaState);
    $stateProvider.state(galeriaDetailState);
    $stateProvider.state(pagesState);
    $urlRouterProvider.when('', '/');
    /*
    ngImageGalleryOptsProvider.setOpts({
        thumbnails: true,
        inline:   false,
        imgBubbles:   false, 
        bgClose:   true,
        bubbles:   true, 
        imgAnim:   'fadeup',
        thumbSize: 160
    });
    */
})
.run(function($rootScope, infosservice, envservice, $window, $state) {
    $rootScope.infosRoot = {};
    $rootScope.path_location = envservice.getHost();
    $rootScope.layout = {};
    
    function init() {
        var search = ['telf', 'email', 'facebook_link'];
        
        infosservice.getDataMany(search, function(data) {
            angular.forEach(search, function(value, key) {
                $rootScope.infosRoot[value] = data.info[value];
            });
        });
    }
    
    var mq = window.matchMedia("(max-width: 767px)");
    $('.nav').on('click', function() {
        if (mq.matches) {
            $('.navbar-toggle').click();
        }
    });
    
    $rootScope.$on('$stateChangeSuccess', function(event, toParams, fromState, fromParams) {
      
        $rootScope.title = $state.current.title;
        $window.scrollTo(0, 0);
        
        if ($state.current.name === 'main') {
            $('body').removeClass('margin');
            $('nav.navbar').addClass('navbar-transparent');
        } else {
            $('body').addClass('margin');
            $('nav.navbar').removeClass('navbar-transparent');
        }
    });
    
    init();
});