'use strict';

describe('Main', function () {
  var InstamotorApp, component;

  beforeEach(function () {
    var container = document.createElement('div');
    container.id = 'content';
    document.body.appendChild(container);

    InstamotorApp = require('../../../src/scripts/components/InstamotorApp.jsx');
    component = InstamotorApp();
  });

  it('should create a new instance of InstamotorApp', function () {
    expect(component).toBeDefined();
  });
});
