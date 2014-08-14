class DraftsController < ApplicationController
  
  def new
    destroy_previous
    @draft = Draft.new
    @draft.champions = Champion.all
    @draft.teams = [Team.new, Team.new]
    @draft.save
    redirect_to @draft
  end

  def update
    @draft = find_draft
    @draft.save
    redirect_to @draft
  end
  def destroy
    @draft = find_draft
    redirect_to root_path
  end
  def show
    @draft = find_draft
    @champions = @draft.champions
  end
  
  private
  
  def find_draft
    Draft.find(params[:id])
  end
  def find_champion
    Champion.find(params[:champion_id])
  end
  def draft_params
    params.require(:draft).permit(:champions, :draft_id)
  end
  def destroy_previous
    Draft.destroy_all
    Team.destroy_all
  end
end
