class AddDraftToTeams < ActiveRecord::Migration
  def change
    add_reference :teams, :draft, index: true
  end
end
