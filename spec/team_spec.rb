  require("spec_helper")


  describe(Team) do

    describe("#players") do
      it('will add a player to a team') do
        player1 = Player.new({:name => "Lemond"})
        player1.save()
        player2 = Player.new({:name => "Lemond"})
        player2.save()
        team = Team.new({:player_name => "Team USA"})
        team.save()
        team.add_player(player1)
        team.add_player(player2)
        expect(team.players()).to(eq([player1, player2]))
      end
    end
  end
end



# (NOTE - player_name should be changed to team_name
 # in database to avoid confusion)
