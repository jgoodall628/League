class RemoveChampionsIdFromChampionsTeams < ActiveRecord::Migration
  def change
    remove_column :champions_teams, :champions_id, :integer
  end
end
