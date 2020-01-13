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
    Freebie.all.select do |freebie_instance|
      freebie_instance.company == self
    end
  end

  def devs
    array = self.freebies.map do |instance|
      instance.dev
    end
    array.uniq
  end

  def give_freebie(dev, item_name)
    Freebie.new(item_name, self, dev)
  end

  def self.oldest_company
    array = Company.all.map do |instance|
      instance.founding_year
    end
    oldest = array.min
    Company.all.select do |instance|
      instance.founding_year == oldest
    end
  end

  def self.most_distributed
    

  end
  # Company.most_distributed
  # should return an instance of Company which has the most freebies given out to devs
  # Dev

end
