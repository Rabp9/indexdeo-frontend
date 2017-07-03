'use strict';

describe('Service: proyectosservice', function () {

  // load the service's module
  beforeEach(module('inexdeoFrotendApp'));

  // instantiate service
  var proyectosservice;
  beforeEach(inject(function (_proyectosservice_) {
    proyectosservice = _proyectosservice_;
  }));

  it('should do something', function () {
    expect(!!proyectosservice).toBe(true);
  });

});
