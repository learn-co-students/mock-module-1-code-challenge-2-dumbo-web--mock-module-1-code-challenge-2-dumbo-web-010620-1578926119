class Company
  attr_reader :name, :founding_year

  @all = []

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year
  end

  def name
   return @name
  end

  def founding_year
    return @founding_year
  end

  def freebies

  end

  def devs

  end

  def all
    @all
  end
end
