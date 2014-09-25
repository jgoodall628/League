class DropChampionSelections < ActiveRecord::Migration
  def change
    drop_table :champion_selections
  end
end
