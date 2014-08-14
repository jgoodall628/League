class CreateChampions < ActiveRecord::Migration
  def change
    create_table :champions do |t|
      t.string :name
      t.float :win_rate
      t.belongs_to :drafts
      t.string :status
      t.timestamps
    end
  end
end
