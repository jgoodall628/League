class RemoveDraftIdFromDrafts < ActiveRecord::Migration
  def change
    remove_index :drafts, :draft_id
    remove_column :drafts, :draft_id, :integer
  end
end
