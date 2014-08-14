class AddPicksToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :picks, :champions
  end
end
