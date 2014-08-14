class RemoveDraftsFromChampions < ActiveRecord::Migration
  def change
    remove_reference :champions, :drafts, index: true
  end
end
