class Team < ActiveRecord::Base
  has_many(:players)

  define_method(:add_player) do |player|
    player.update({:team_id => self.id().to_i()})
  end
end
