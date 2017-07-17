'use strict';

describe('Controller: GaleriaDetailCtrl', function () {

  // load the controller's module
  beforeEach(module('inexdeoFrotendApp'));

  var GaleriaDetailCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    GaleriaDetailCtrl = $controller('GaleriaDetailCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(GaleriaDetailCtrl.awesomeThings.length).toBe(3);
  });
});
