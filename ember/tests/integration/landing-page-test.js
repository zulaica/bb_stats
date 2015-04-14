import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from '../helpers/start-app';

var App;

module('Integration - Landing Page', {
  beforeEach: function() {
    App = startApp();
  },
  afterEach: function() {
    Ember.run(App, 'destroy');
  }
});


test('Should welcome me to BBWDTF', function(assert) {
  visit('/').then(function() {
    assert.equal(find('h1').text(), 'Welcome to BBWDTF');
  });
});

test('Should allow navigating back to root from another page', function(assert) {
  visit('/teams').then(function() {
    click('a:contains("Home")').then(function() {
      assert.notEqual(find('h3').text(), 'Team');
    });
  });
});
