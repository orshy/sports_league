class Teams < ActiveRecord::Migration
  def change
    create_table(:teams) do |p|
      p.column(:player_name, :varchar)
    end
  end
end
