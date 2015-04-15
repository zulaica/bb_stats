teams = Team.create([
  { name: "Lightning Tigers",
    location: "Tillamook, OR" },
  { name: "Lava Sharks",
    location: "Albany, OR" },
  { name: "Space Panthers",
    location: "Eugene, OR" }
  ])

Player.create(name: "Bob", number: "42", team: teams.first)
Player.create(name: "Thaddeus", number: "421", team: teams.last)
Player.create(name: "Jane", number: "48", team: teams.last)
Player.create(name: "Emily", number: "45", team: Team.find(2))
