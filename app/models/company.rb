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

  def freebies
    Freebie.all.select { |free| free.company == self } 
  end 

  def devs
    Dev.all.select { |devel| devel.dev == self } 
  end 

  def give_freebie(dev, item_name)
    Freebie.new(item_name, self, dev)
  end 


  def self.oldest_company
    Freebie.all.map do |year|
     year.company.founding_year
    end 
  end 
end
