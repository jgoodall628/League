class RemoveTeamsIdFromChampionsTeams < ActiveRecord::Migration
  def change
    remove_column :champions_teams, :teams_id, :integer
  end
end
