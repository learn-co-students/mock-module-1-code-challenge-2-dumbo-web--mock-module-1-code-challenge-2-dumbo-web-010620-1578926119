class Company
  attr_reader :name, :founding_year, :freebies

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
  #  @freebies = []
  #  @freebies << Freebie.self
  end

  def devs

  end


end

# ********** TO DO ***************
# - `Company#freebies`
#   - returns an array of all the freebies given out by the company
# - `Company#devs`
#   - returns a **unique** array of all the devs who received freebie(s) from the company



# **********DONE*******************
#  `Company#initialize(name, founding_year)`
#   - should initialize with a name (string) and founding_year (integer)
#  `Company#name`
#   - should return the name of the company
#  `Company#founding_year`
#   - should return the founding_year#  
#  `Company.all` 
#   - Returns an array of all Company instances