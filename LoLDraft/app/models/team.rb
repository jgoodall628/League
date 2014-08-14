class Team < ActiveRecord::Base
  belongs_to :drafts
  has_many :picks
  has_many :bans
  has_and_belongs_to_many :champions
  def select champ
    
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
  def bans
    champions[0..2].nil? ? [] : champions[0..2]
      
      
  end
  def picks
    champions[3..8].nil? ? [] : champions[3..8]
  end
  
  def team_full?
    champions.length == 8
  end
end
