class AddTeamIdToChampionsTeams < ActiveRecord::Migration
  def change
    add_column :champions_teams, :team_id, :integer
  end
end
