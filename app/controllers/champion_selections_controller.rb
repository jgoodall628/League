class ChampionSelectionsController < ApplicationController
  def create
    @draft = set_draft
    @champion = set_champion
    @team = set_team
    @picked = set_picked
    
    if can_select?(@team, @picked)
        select_champ(@team, @champion, @picked)
        remove_champ_from_draft_list(@champion)
        redirect_to  @draft
    else
        redirect_to @draft, notice: "Cannot Select"
    end
    
  end
  
  
 private 
  def set_champion
    Champion.find(params[:champion_id])
  end
  def set_draft
    Draft.find(params[:draft_id])
  end
  def set_team
    Team.find(params[:team_id])
  end
  def set_picked
    #converts from string to boolean along with setting value
    params[:picked] == "true"
   
  end
  def select_champ(team, champ, pick_or_ban)
    @selection = ChampionSelection.new(team: team, champion: champ, picked: pick_or_ban)
    @selection.save
  end
  def remove_champ_from_draft_list champ
    @draft.select_champion([champ]) 
  end
  def can_select? (team, pick_or_ban)
    pick_or_ban ? team.can_pick? : team.can_ban?
  end
end