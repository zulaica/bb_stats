import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from '../helpers/start-app';

var App;

module('Integration - Teams Page', {
  beforeEach: function() {
    App = startApp();
  },
  afterEach: function() {
    Ember.run(App, 'destroy');
  }
});

test('Should navigate to the Teams page', function(assert) {
  visit('/').then(function() {
    click("a:contains('Teams')").then(function() {
      assert.equal(find('h3').text(), 'Teams');
    });
  });
});