class Company
  attr_reader :name, :founding_year

  @@all = []

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year
    @@all << self
  end

  def freebies
    my_freebies = Freebie.all.select { |freebie| freebie.company == self }
  end

  def devs
    self.freebies.map { |freebie| freebie.dev.uniq }
  end

  def give_freebie(dev, item_name)
    Freebie.new(item_name, self, dev)
  end

  def self.oldest_company
    self.all.find {|company| company.founding_year < self.company.founding_year}
  end

  def self.most_distributed
    self.all.map do |company| 
      if company.freebies.length > self.freebies.length
        return company.freebies.length
      else
        return self.freebies.length
      end
    end
  end

  def self.all
    @@all
  end

end

# Company

# Company#give_freebie(dev, item_name)
#   takes a dev (an instance of the Dev class) and an item_name (string) as arguments, 
  # and creates a new Freebie instance associated with this company and the given dev

# Company.oldest_company
#   returns the Company instance with the earliest founding year

# Company.most_distributed
#   should return an instance of Company which has the most freebies given out to devs
