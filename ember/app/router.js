import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  // this.route('teams');
  // this.resource('team', { path: '/teams/:team_id'});
  this.resource('teams', function() {
    this.route('show', {path: ':team_id'});
  });
});

export default Router;
