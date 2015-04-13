json.teams @teams do |team|
  json.id       team.id
  json.name     team.name
  json.location team.location
end
