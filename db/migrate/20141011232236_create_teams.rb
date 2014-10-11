class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer "draft_id"
    end
  end
end
