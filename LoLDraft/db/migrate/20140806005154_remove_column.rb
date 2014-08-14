class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :drafts, :teams, :belongs_to
  end
end
