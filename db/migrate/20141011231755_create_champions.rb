class CreateChampions < ActiveRecord::Migration
  def change
    create_table :champions do |t|
      t.string "name"
      t.float "win_rate"
    end
  end
end
