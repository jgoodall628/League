class RemoveTeamsFromPicks < ActiveRecord::Migration
  def change
    remove_reference :picks, :teams, index: true
  end
end
