class Company
  @@all = []
  attr_reader :name, :founding_year

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year
    @@all << self 
  end

  def name
    self.name 
  end 

  def founding_year 
    self.founding_year 
  end 

  def self.all 
    @@all 
  end 

  def freebies 
    Freebie.all.select {|freebies|freebies.company == self}
  end 

  def devs
    Dev.all.map.uniq {|freebies| freebies.company == self}
  end 

  def give_freebie(dev, item_name)
    Freebie.new(company, dev)
  end 
  

end

- `Company#give_freebie(dev, item_name)`
  - takes a `dev` (an instance of the `Dev` class) and an `item_name` (string) as arguments, and creates a 
    new `Freebie` instance associated with this company and the given dev
- `Company.oldest_company`
  - returns the `Company` instance with the earliest founding year
- `Company.most_distributed`
  - should return an instance of `Company` which has the most freebies given out to devs
