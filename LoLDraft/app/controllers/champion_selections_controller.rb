class ChampionSelectionsController < ApplicationController
  def create
    @draft = set_draft
    @champion = set_champion
    @team = set_team
    @picked = set_picked
    
    if @picked == true
      unless @team.picks_full?
        @champ_select = ChampionSelection.new(team: @team, champion: @champion, picked: true)
        @champ_select.save
        @draft.select_champion([@champion])
        redirect_to  @draft
      else
        redirect_to @draft, notice: "Picks Full"
      end
    else
      unless @team.bans_full?
        @champ_select = ChampionSelection.new(team: @team, champion: @champion, picked: false)
        @champ_select.save
        @draft.select_champion([@champion]) 
        redirect_to @draft
      else
        redirect_to @draft, notice: "Bans Full"
      end
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
    params[:picked]
  end
end