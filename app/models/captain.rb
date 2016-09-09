class Captain < ActiveRecord::Base
  has_many :boats
  has_many :boat_classifications, through: :boats  #this might be "cheating", refactor, remove!
  has_many  :classifications, through: :boat_classifications  #this might be "cheating", refactor, remove!

  def self.catamaran_operators
    self.joins(:classifications).where("classifications.name = 'Catamaran'").group("captains.name")
  end

  def self.sailors
    self.joins(:classifications).where("classifications.name = 'Sailboat'").group("captains.name")
  end

  def self.talented_seamen
    self.joins(:classifications).select("captains.name").where("classifications.name = 'Sailboat' OR classifications.name = 'Motorboat'").having("count(classifications.name) >= 2").group("classifications.name").order("captains.name")
  end

  def self.non_sailors
    not_these_guys = self.sailors.pluck(:name)
    self.where.not(name: not_these_guys)
  end

end
