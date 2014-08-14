class ChampionsController < ApplicationController
  before_action :set_champion, only: [:show, :edit, :update, :destroy]

  # GET /champions
  # GET /champions.json
  def index
    @champions = Champion.all
  end

  # GET /champions/1
  # GET /champions/1.json
  def show
    @champion = set_champion
  end

  
  def pick_champion
    @champion = set_champion
    @draft = set_draft
    if @draft.can_pick?
      @draft.pick_champion([@champion]) 
      redirect_to @draft
    else
      redirect_to @draft, notice: "Team Full"
    end
  end
  
  def unpick_champion
    @draft = set_draft
    @team = set_team
    @champion = set_champion
    @team.unpick_champion(@champion)
    @draft.unpick_champion(@champion)
    redirect_to @draft
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_champion
      Champion.find(params[:id])
    end
    def set_draft
      Draft.find(params[:draft_id])
    end
    def set_team
      Team.find(params[:team_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def champion_params
      params.require(:champion).permit(:name)
    end
end
