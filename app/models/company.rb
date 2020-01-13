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
    Freebie.all.select{|freebies| freebies.company == self}
  end

  def devs
    list_of_freebies = Freebie.all.select{|freebies| freebies.company == self}
    new_array = list_of_freebies.map{|free| free.dev}
    new_array.uniq
  end

  def give_freebie(dev,item_name)
  
    Freebie.new(item_name,self,dev)
  end

  def self.oldest_company
    Company.all.find {|comp| comp.founding_year >= 0}
  end

  def self.most_distributed

  end

end
