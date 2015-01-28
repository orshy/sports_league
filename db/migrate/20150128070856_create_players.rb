class CreatePlayers < ActiveRecord::Migration
  def change
    create_table(:players) do |p|
      p.column(:player_name, :varchar)
      p.column(:team_id, :int)
    end
  end
end
