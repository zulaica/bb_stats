import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  number: DS.attr('number'),
  team: DS.belongsTo('team', { async: true })
});
