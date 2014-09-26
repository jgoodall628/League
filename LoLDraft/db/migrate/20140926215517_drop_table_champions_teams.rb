class DropTableChampionsTeams < ActiveRecord::Migration
  def change
    drop_table :champions_teams
  end
end
