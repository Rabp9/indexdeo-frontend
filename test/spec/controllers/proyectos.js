'use strict';

describe('Controller: ProyectosCtrl', function () {

  // load the controller's module
  beforeEach(module('inexdeoFrotendApp'));

  var ProyectosCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    ProyectosCtrl = $controller('ProyectosCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(ProyectosCtrl.awesomeThings.length).toBe(3);
  });
});
