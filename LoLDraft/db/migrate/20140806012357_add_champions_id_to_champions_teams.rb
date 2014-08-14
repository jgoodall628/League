class AddChampionsIdToChampionsTeams < ActiveRecord::Migration
  def change
    add_column :champions_teams, :champion_id, :integer
  end
end
