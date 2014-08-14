class AddBansToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :bans, :champion
  end
end
