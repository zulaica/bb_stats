import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.resource('teams', {path: '/'}, function() {
    this.route('show', {path: ':team_id'}, function() {
      this.route('players');
    });
  });
});

export default Router;
