class Company
  @@all = []
  attr_reader :name, :founding_year

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year
    @@all << self

  end
  def self.all
    @all
  end

  def freebies
    Freebie.all.select do |freebie|
      freebie.company == self
    end

  def devs
   array= Devs.all.select do |freebie|
      freebie.name == self
    end
    array.uniq
  end

end
