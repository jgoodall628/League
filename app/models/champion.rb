class Champion < ActiveRecord::Base
  has_and_belongs_to_many :drafts
  #has_and_belongs_to_many :teams
  has_many :champion_selections
  has_many :teams, through: :champion_selections
end
