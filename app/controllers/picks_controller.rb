class PicksController < ApplicationController
  def new
    @draft = Draft.find(params[:draft_id])
    @champions = @draft.champions
  end
  
  def create
    ChampionSelection.create(pick_params)
  end
  private
  
  
end