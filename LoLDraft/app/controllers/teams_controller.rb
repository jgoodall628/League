class TeamsController < ApplicationController
  def remove_champion
    @team = find_team
    @draft = @team.drafts
    @champ = find_champ
    redirect_to @draft
  end
  def clear_team
    @draft = find_draft
    @team = find_team
    @team.clear_team (@draft)
    redirect_to @draft
  end
  

  private
  
  def find_team
    Team.find(params[:id])
  end
  
  def find_champ
    Champion.find(params[:champion_id])
  end
  
  def find_draft
    Draft.find(params[:draft_id])
  end
end