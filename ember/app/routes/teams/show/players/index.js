import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    // return this.store.find('player');
    this.modelFor('team').get('players');
  }
});
