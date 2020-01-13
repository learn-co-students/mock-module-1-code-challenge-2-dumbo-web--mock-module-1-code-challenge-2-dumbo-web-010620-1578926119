class Dev
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def freebies
    my_freebies = Freebie.all.select { |freebie| freebie.dev == self }
  end

  def companies
    self.freebies.map { |freebie| freebie.company.uniq }
  end

  def received_one?(item_name)
  end

  def give_away(dev, freebie)

  end

  def self.freebie_hoarder
  end
  
  def self.all
    @@all
  end

end

# Dev

# Dev#received_one?(item_name)
# accepts an item_name (string) and returns true if any of the freebies associated with the dev has that item_name, 
  # otherwise returns false

# Dev#give_away(dev, freebie)
#   accepts a Dev instance and a Freebie instance, changes the freebie's dev to be the given dev

# Dev.freebie_hoarder
#   returns one dev instance for the dev who owns the most amount of freebies
