require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("sinatra/activerecord")
require("./lib/player")
require("./lib/team")
require("pg")

get('/') do
  @teams = Team.all()
  erb(:index)
end

post("/players") do
  player_name = params.fetch("player_name")
  team_id = params.fetch("team_id").to_i()
  player = Player.new({:player_name => player_name, :team_id => team_id})
  player.save()
  @team = Team.find(team_id)
  erb(:team)
end

post("/teams") do
  team_name = params.fetch("team_name")
  team = Team.new({:team_name => team_name, :id => nil})
  team.save()
  @teams = Team.all()
  erb(:index)
end

get("/teams/:id") do
  @team = Team.find(params.fetch("id").to_i())
  erb(:team)
end

get("/teams/:id/edit") do
  @team = Team.find(params.fetch("id").to_i())
  erb(:team_edit)
end

patch("/teams/:id") do
  team_name = params.fetch("team_name")
  @team = Team.find(params.fetch("id").to_i())
  @team.update({:team_name => team_name})
  erb(:team)
end

delete("/teams/:id") do
  @team = Team.find(params.fetch("id").to_i())
  @team.delete()
  @teams = Team.all()
  erb(:index)
end

get("/players/:id") do
  @player = Player.find(params.fetch("id").to_i())
  erb(:player)
end

get("/players/:id/edit") do
  @player = Player.find(params.fetch("id").to_i())
  erb(:player_edit)
end

patch("/players/:id") do
  player_name = params.fetch("player_name")
  @player = Player.find(params.fetch("id").to_i())
  @player.update({:player_name => player_name})
  redirect('/')
end

delete("/players/:id") do
  @player = Player.find(params.fetch("id").to_i())
  @player.delete()
  @players = Player.all()
  redirect('/')
end
