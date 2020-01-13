class Company

  @@all = []
  attr_reader :name, :founding_year

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year
    @@all << self
  end

  def self.all
    @@all
  end

  #- `Company#freebies`
  # returns an array of all the freebies given out by the company

  def company_freebies

  end

  # `Company#devs`
  # returns a **unique** array of all the devs who received freebie(s) from the company
  # def company_devs

  #   new_array = []



  # end

end
end
