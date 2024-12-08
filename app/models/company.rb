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
    @@freebies = {}
  end

  def devs
    @@devs.uniq!
  end

  def give_freebie(dev, item_name)
    @@freebies.merge!dev, item_name
  end

  def oldest_company
    @founding_year.min
  end

  def most_distributed
    @@freebies.max
  end

end
