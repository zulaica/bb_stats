# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teams = Team.create([
  { name: "Lightning Tigers",
    location: "Tillamook, OR" },
  { name: "Lava Sharks",
    location: "Albany, OR" },
  { name: "Space Panthers",
    location: "Eugene, OR" }
  ])

Player.create(name: "Bob", number: "42", team: teams.first)
