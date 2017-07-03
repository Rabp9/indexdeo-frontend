'use strict';

describe('Controller: ProductosDetailCtrl', function () {

  // load the controller's module
  beforeEach(module('inexdeoFrotendApp'));

  var ProductosDetailCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    ProductosDetailCtrl = $controller('ProductosDetailCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(ProductosDetailCtrl.awesomeThings.length).toBe(3);
  });
});
