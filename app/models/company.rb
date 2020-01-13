class Company
  attr_reader :name, :founding_year

  @@all = [] 

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year

    @@all << self 
  end

  def self.all 
    @@all
  end

  # def freebies
    
  # end

  def give_freebie(dev, item_name)
    Freebie.new(item_name, self, dev)
  end 

  # Freebie.new(item_name, company, dev)



end
