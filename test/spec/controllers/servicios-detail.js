'use strict';

describe('Controller: ServiciosDetailCtrl', function () {

  // load the controller's module
  beforeEach(module('inexdeoFrotendApp'));

  var ServiciosDetailCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    ServiciosDetailCtrl = $controller('ServiciosDetailCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(ServiciosDetailCtrl.awesomeThings.length).toBe(3);
  });
});
