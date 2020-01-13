class Company
  attr_reader :name, :founding_year
  @@all = []

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year

    @@all << self
  end

  def freebies
    Freebie.all.select do |freebie|
      freebie.company == self
    end
  end

  def devs
    list_of_devs = freebies.map do |freebie|
      freebie.dev.name
    end

    list_of_devs.uniq
  end

  def give_freebie(dev, item_name)
    Freebie.new(item_name, self, dev)
  end

  def self.all
    @@all
  end

end
