
class Company
  attr_reader :name, :founding_year


 @@all = []

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year
  self << @@all 
  end


  def freebies
    @@all 
  end


  def give_freebies(dev, item_name)
      dev 
  end




  def self.oldest_company
    self.select do |founding_year|
   end
  end
end


