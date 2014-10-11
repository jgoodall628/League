class Team < ActiveRecord::Base
  belongs_to :drafts
  has_many :champion_selections
  has_many :champions, through: :champion_selections
  
  def picked_champions
    champions.where(champion_selections: { picked: true })
  end
  
  def pick_champion champ
    
    champions << champ
    self.save  
    selection = champion_selections.find_by(champion: champ)
    selection.picked = true
    selection.save
    
    
  end
  def ban_champion champ
    champions << champ
    self.save 
  end
  def clear_team draft
    champions.each do |champ|
      draft.unpick_champion(champ)
    end
    champions.clear
    self.save
  end
  def unpick_champion champ
    self.champions.delete(champ)
    self.save
  end
  def banned_champions
    champions.where(champion_selections: { picked: false })      
  end

  def can_ban?
    banned_champions.length < 3
  end
  def can_pick?
    picked_champions.length < 5
  end
  def team_full?
    picks_full? && bans_full?
  end
end
