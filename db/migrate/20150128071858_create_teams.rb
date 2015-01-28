class CreateTeams < ActiveRecord::Migration
  def change
    create_table(:teams) do |p|
      p.column(:team_name, :varchar)
    end
  end
end
