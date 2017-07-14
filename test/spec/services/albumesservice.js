'use strict';

describe('Service: albumesservice', function () {

  // load the service's module
  beforeEach(module('inexdeoFrotendApp'));

  // instantiate service
  var albumesservice;
  beforeEach(inject(function (_albumesservice_) {
    albumesservice = _albumesservice_;
  }));

  it('should do something', function () {
    expect(!!albumesservice).toBe(true);
  });

});
