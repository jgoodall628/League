class CreateChampionSelections < ActiveRecord::Migration
  def change
    create_table :champion_selections do |t|
      t.integer "team_id"
      t.integer "champion_id"
      t.boolean "picked"
    end
  end
end
