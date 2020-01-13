class Dev
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def freebies
    Freebie.all.select do |instance|
      instance.dev == self
    end
  end

  def companies
    array = self.freebies.map do |instance|
      instance.company
    end
    array.uniq
  end

  def received_one?(item_name)
    array = self.freebies.map do |instance|
      instance.item_name
    end
    array.include?(item_name)
  end

  def give_away(dev, freebie)
    freebie.dev = dev
  end

  def self.freebie_hoarder
    
  end

# Dev#give_away(dev, freebie)
# accepts a Dev instance and a Freebie instance, changes the freebie's dev to be the given dev
# Dev.freebie_hoarder
# returns one dev instance for the dev who owns the most amount of freebies
# end
