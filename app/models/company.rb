class Company
  attr_reader :name, :founding_year
  @@all = [] 

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year
    @@all << self
  end

  def company_freebies 
    freebies = Freebie.all.select do |freebie|
      freebie.company == self 
    end 
  end 

  def company_devs 
      devs = Dev.all.select do |devs|
        devs.company == self 
      end 
  end 

  def give_freebies(item_name, dev)
     Freebie.new(item_name, self, dev)
  end 

  def oldest_company 
    Company.all.sort 
  end 

  def self.freebie
      Freebie.all 
  end 

  def self.dev 
    Dev.all 
  end 
  def self.all 
      @@all 
  end 
end
