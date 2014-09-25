class CreateChampionSelections < ActiveRecord::Migration
  def change
    create_table :champion_selections do |t|
      t.belongs_to :team
      t.belongs_to :champion
      t.boolean :picked, default: false
    end
  end
end
