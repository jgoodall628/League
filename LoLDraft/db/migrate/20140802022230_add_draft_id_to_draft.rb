class AddDraftIdToDraft < ActiveRecord::Migration
  def change
    add_column :drafts, :draft_id, :integer
    add_index :drafts, :draft_id
  end
end
