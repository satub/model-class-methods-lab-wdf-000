class Boat < ActiveRecord::Base
  belongs_to  :captain
  has_many    :boat_classifications
  has_many    :classifications, through: :boat_classifications

  def self.first_five
    self.limit(5)
  end

  def self.dinghy
    self.where("length < 20")
  end

  def self.ship
    self.where("length >= 20")
  end

  def self.last_three_alphabetically
    self.order(name: :desc).limit(3)
  end

  def self.without_a_captain
    self.where(captain_id: nil)
  end

  def self.sailboats
    self.joins(:classifications).where("classifications.name = 'Sailboat'")
  end

  def self.with_three_classifications
    self.joins(:classifications).having("count(boats.name) = 3").group("boat_classifications.boat_id")
    #  self.find_by_sql "SELECT * FROM boats INNER JOIN boat_classifications on boat_classifications.boat_id = boats.id INNER JOIN classifications ON boat_classifications.classification_id = classifications.id GROUP BY boat_classifications.boat_id  HAVING count(boats.name) = 3"
    # The find_by_sql raw query works, too, put it returns an array of Boat objects, instead of an ActiveRecord Relation Object, which the corresponding rspec test requires!
  end

  def self.max_length
    self.order(length: :desc).limit(1).pluck(:length)[0]
  end

end
