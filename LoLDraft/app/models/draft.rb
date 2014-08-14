class Draft < ActiveRecord::Base
  has_and_belongs_to_many :champions
  has_many :teams 
  
  
  def pick_champion champ
      self.champions.delete(champ)
      team_turn.select(champ)
      self.save
   
  end
  
  def team_turn
    teams.first.champions.length > teams.last.champions.length ? teams.last : teams.first
  end
  def unpick_champion champ
    champions << champ
    self.save
  end
  def can_pick?
    !team_turn.team_full?
  end
  
    
 
end

