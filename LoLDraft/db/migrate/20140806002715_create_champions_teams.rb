class CreateChampionsTeams < ActiveRecord::Migration
  def change
    create_table :champions_teams do |t|
      t.belongs_to :champions, index: true
      t.belongs_to :teams, index: true
    end
  end
end
