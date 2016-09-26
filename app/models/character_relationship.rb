class CharacterRelationship < ActiveRecord::Base
  belongs_to :character_a, :class_name => :Character
  belongs_to :character_b, :class_name => :Character
end
