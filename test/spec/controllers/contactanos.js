'use strict';

describe('Controller: ContactanosCtrl', function () {

  // load the controller's module
  beforeEach(module('inexdeoFrotendApp'));

  var ContactanosCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    ContactanosCtrl = $controller('ContactanosCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(ContactanosCtrl.awesomeThings.length).toBe(3);
  });
});
