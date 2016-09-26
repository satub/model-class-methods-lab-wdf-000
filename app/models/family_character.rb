class FamilyCharacter < ActiveRecord::Base
  belongs_to :family
  belongs_to :character
end
