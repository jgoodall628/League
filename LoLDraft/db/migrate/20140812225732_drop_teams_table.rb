class DropTeamsTable < ActiveRecord::Migration
  def up
    drop_table :teams
  end
  def down
    ActiveRecord::IrreversibleMigration
  end
end
