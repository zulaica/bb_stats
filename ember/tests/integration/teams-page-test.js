import Ember from 'ember';
import startApp from '../helpers/start-app';
import { module, test } from 'qunit';
import Pretender from 'pretender';

var App, server;

module('Integration - Teams Page', {
  beforeEach: function() {
    App = startApp();
    var teams = [
      {
        id: 2,
        name: 'Lava Sharks',
        location: 'Grants Pass'
      },
      {
        id: 3,
        name: 'Killer Ninjas',
        location: 'Corvallis'
      }
    ];

    server = new Pretender(function() {
      this.get('/api/teams', function(request) {
        return [200, {"Content-Type": "applicaton/json"}, JSON.stringify({teams: teams})];
      });

      this.get('api/teams/:id', function(request) {
        var team = teams.find(function(team) {
          if (team.id === parseInt(request.params.id, 10)) {
            return team;
          }
        });

        return [200, {"Content-Type": "application/json"}, JSON.stringify({team: team})];

      });
    });
  },
  afterEach: function() {
    Ember.run(App, 'destroy');
    server.shutdown();
  }
});

test('Should list all teams', function(assert) {
  visit('/teams').then(function() {
    assert.equal(find('a:contains("Lava Sharks")').length, 1);
    assert.equal(find('a:contains("Killer Ninjas")').length, 1);
  });
});

test('Should be able to navigate to a team page', function(assert) {
  visit('/teams').then(function() {
    click('a:contains("Lava Sharks")').then(function() {
      assert.equal(find('h4').text(), 'Lava Sharks');
    });
  });
});
