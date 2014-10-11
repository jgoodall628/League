class CreateChampionsDrafts < ActiveRecord::Migration
  def change
    create_table :champions_drafts do |t|
      t.integer "draft_id"
      t.integer "champion_id"
    end
  end
end
