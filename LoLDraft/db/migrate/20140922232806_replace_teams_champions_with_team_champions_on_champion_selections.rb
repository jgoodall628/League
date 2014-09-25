class ReplaceTeamsChampionsWithTeamChampionsOnChampionSelections < ActiveRecord::Migration
  def change
    remove_column :champion_selections, :teams, :belongs_to
    remove_column :champion_selections, :champions, :belongs_to
    add_column :champion_selections, :team, :belongs_to
    add_column :champion_selections, :champion, :belongs_to
  end
end
