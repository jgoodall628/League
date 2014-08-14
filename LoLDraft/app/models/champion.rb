class Champion < ActiveRecord::Base
  has_and_belongs_to_many :drafts
  has_and_belongs_to_many :teams
end
