class AddChampionSelectionsToTeams < ActiveRecord::Migration
  def change
    create_table :champion_selections do |t|
      t.belongs_to :teams
      t.belongs_to :champions
      t.boolean :picked, default: :false
    end
  end
end
