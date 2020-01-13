class Company
  attr_reader :name, :founding_year
  attr_accessor :freebies, :dev

  @@all = [] 

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year
    @freebies = []
    @dev = []

    @@all << self 
  end

  def self.all 
    @@all
  end

  # def freebies
    
  # end

  def give_freebie(dev, item_name)
    @freebies << Freebie.new(item_name, self, dev)
    @dev << Freebie.new(item_name, self, dev)

  end 

  # Freebie.new(item_name, company, dev)

  def freebies
    @freebies
  end 

  def devs
    @dev.uniq
  end 


end
