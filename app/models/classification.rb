class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
    self.select(:name).distinct
  end

  def self.longest
    das_laengste_boot = Boat.max_length
    self.joins(:boats).where("boats.length = ? ", das_laengste_boot)
  end

end
