class Draft < ActiveRecord::Base
  has_and_belongs_to_many :champions
  has_many :teams 
  
  
  def select_champion champ
      self.champions.delete(champ)
      self.save
  end
  def picking_team
    teams.inject(teams.first) {|min, team| team.champions.length < min.champions.length ? min = team : min}
  end
  #def team_turn
    #teams.first.champions.length > teams.last.champions.length ? teams.last : teams.first
    #end
  def unpick_champion champ
    champions << champ
    self.save
  end
  def full_teams?
    teams.all? {|team| team.team_full? }
  end
  
    
 
end

