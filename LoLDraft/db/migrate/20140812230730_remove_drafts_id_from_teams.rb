class RemoveDraftsIdFromTeams < ActiveRecord::Migration
  def change
    remove_column :teams, :drafts_id
  end
end
