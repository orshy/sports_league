require("spec_helper")

describe(Player) do

  describe(Player) do
    it("tells which team the player belongs to") do
      team = Team.create({:team_name => "team_name", :team_id => team.id})
      player = Player.create({:employee_name => "employee_name", :team_id => team.id})
      expect(player.team()).to(eq(team))
    end
  end
end
