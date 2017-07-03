'use strict';

describe('Service: productosservice', function () {

  // load the service's module
  beforeEach(module('inexdeoFrotendApp'));

  // instantiate service
  var productosservice;
  beforeEach(inject(function (_productosservice_) {
    productosservice = _productosservice_;
  }));

  it('should do something', function () {
    expect(!!productosservice).toBe(true);
  });

});
