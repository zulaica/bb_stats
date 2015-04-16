import Ember from 'ember';
import EmberPusher from 'ember-pusher';

export default Ember.Controller.extend(EmberPusher.Bindings, {
  logPusherEvents: true,
  PUSHER_SUBSCRIPTIONS: {
    playerChannel: ['new-player']
  },
  actions: {
    newPlayer: function(payload) {
      console.log(payload);
      this.store.pushPayload('player', payload);
    }
  }

});
