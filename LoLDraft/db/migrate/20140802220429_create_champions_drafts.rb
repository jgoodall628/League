class CreateChampionsDrafts < ActiveRecord::Migration
  def change
    create_table :champions_drafts do |t|
      t.belongs_to :draft, index: true
      t.belongs_to :champion, index: true
    end
  end
end
