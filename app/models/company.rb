require_relative 'dev.rb'
require_relative 'freebie.rb'

class Company
  attr_reader :name, :founding_year
  @@all = []
  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year
    @@all << self
  end

  def freebies
    #return an array with select
    Freebie.all.select do |freebie_item|
      freebie_item.company == self
    end
  end

  def devs
    dev_array = Freebie.all.select do |freebie_item|
      freebie_item.company == self
    end
    dev_array.uniq
  end

  def give_freebie(dev, item_name)
    Freebie.new(item_name,self,dev)
  end

  def oldest_company
    oldest = 0
    if self.founding_year > 0
      oldest = self.founding_year
    end
  end

  def self.all
    @@all
  end

end


# [x] `Company#initialize(name, founding_year) should initialize with a name (string) and founding_year (integer)
# [x] `Company#name`should return the name of the company
# [x] `Company#founding_year`should return the founding_year
# [x] `Company.all` Returns an array of all Company instances

# [x] `Company#freebies` returns an array of all the freebies given out by the company
# [] `Company#devs`returns a **unique** array of all the devs who received freebie(s) from the company

# #`Company#give_freebie(dev, item_name)`
# - takes a `dev` (an instance of the `Dev` class) and an `item_name` (string) as arguments, and creates a new `Freebie` instance associated with this company and the given dev