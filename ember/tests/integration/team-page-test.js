import Ember from 'ember';
import { module, test } from 'qunit';
import startApp from '../helpers/start-app';

var App, server;

module('Integration - Team Page', {
  beforeEach: function() {
    App = startApp();
    var teams = [
      {
        id: 1,
        name: 'Lava Sharks',
        location: 'Grants Pass'
      },
      {
        id: 2,
        name: 'Killer Ninjas',
        location: 'Corvallis'
      }
    ];

    var players = [
      {
        id: 1,
        name: "Eduardo",
        number: "10",
        team_id: 1
      },
      {
        id: 2,
        name: "Kumiko",
        number: "35",
        team_id: 2
      },
      {
        id: 3,
        name: "Jose",
        number: "10",
        team_id: 1
      },
    ];

    server = new Pretender(function() {
      this.get('/api/teams', function(request) {
        return [200, {"Content-Type": "applicaton/json"}, JSON.stringify({teams: teams, players: players})];
      });

      this.get('api/teams/:id', function(request) {
        var team = teams.find(function(team) {
          if (team.id === parseInt(request.params.id, 10)) {
            return team;
          }
        });

        return [200, {"Content-Type": "application/json"}, JSON.stringify({team: team, players: players})];

      });
    });

  },
  afterEach: function() {
    Ember.run(App, 'destroy');
    server.shutdown();
  }
});

test('Should list all players for a particular team', function(assert) {
  visit('/').then(function() {
    click("a:contains('Killer Ninjas')").then(function() {
      assert.equal(find('dt').text(), 'Kumiko');
    });
  });
});
