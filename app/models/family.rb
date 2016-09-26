class Family < ActiveRecord::Base
  has_many :family_characters
  has_many :characters, through: :family_characters
  has_many :character_relationships, through: :characters
  has_many :reverse_character_relationships, through: :characters
end
