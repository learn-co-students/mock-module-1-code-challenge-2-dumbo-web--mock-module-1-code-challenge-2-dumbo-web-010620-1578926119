class Dev
  attr_reader :name, :freebies

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def freebies
    
  end

  def companies
    
  end

end


# **TO DO***
#  `Dev#freebies`
#   - returns an array of all the freebies that the dev owns
#   `Dev#companies`
#   - returns a **unique** array of all the companies that the dev received freebie(s) from


# **DONE*******
#  `Dev#initialize(name)`
#   - should initialize with a name (string)
#  `Dev#name`
#   - should return the name of the dev
#  `Dev.all`
#   - Returns an array of all Dev instances
