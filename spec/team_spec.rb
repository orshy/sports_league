  require("spec_helper")

  describe(Team) do
  it("tells which players belong to a team") do
    team = Team.create({:team_name => "team", :team_id => team.id})
    employee1 = Player.create({:player_name => "employee1", :team_id => team.id})
    employee2 = Player.create({:player_name => "employee2", :team_id => team.id})
    expect(team.players()).to(eq([employee1, employee2]))
  end
end
