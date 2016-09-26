class Character < ActiveRecord::Base
  has_many :family_characters
  has_many :families, through: :family_characters


  has_many(:character_relationships, :foreign_key => :character_a_id, :dependent => :destroy)
  has_many(:reverse_character_relationships, :class_name => :CharacterRelationship,
      :foreign_key => :character_b_id, :dependent => :destroy)
  has_many :characters, :through => :character_relationships, :source => :character_b

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def full_name=(name)
    parts = name.split(" ")
    self.first_name = parts[0]
    self.last_name = parts[1]
  end

end
