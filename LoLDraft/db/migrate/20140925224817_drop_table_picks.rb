class DropTablePicks < ActiveRecord::Migration
  def change
    drop_table :picks
  end
end
