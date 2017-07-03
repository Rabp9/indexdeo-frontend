'use strict';

describe('Controller: ProyectosDetailCtrl', function () {

  // load the controller's module
  beforeEach(module('inexdeoFrotendApp'));

  var ProyectosDetailCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    ProyectosDetailCtrl = $controller('ProyectosDetailCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(ProyectosDetailCtrl.awesomeThings.length).toBe(3);
  });
});
