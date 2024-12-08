require_relative 'company.rb'
require_relative 'freebie.rb'
class Dev
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def freebies
    #return an array with select
    Freebie.all.select do |freebie_item|
      freebie_item.dev == self
    end
  end

  def self.all
    @@all
  end

end


# [x] `Dev#initialize(name) should initialize with a name (string)
# [x] `Dev#name`should return the name of the dev
# [x] `Dev.all`Returns an array of all Dev instances

# [x] `Dev#freebies`returns an array of all the freebies that the dev owns
# [ ] `Dev#companies`returns a **unique** array of all the companies that the dev received freebie(s) from