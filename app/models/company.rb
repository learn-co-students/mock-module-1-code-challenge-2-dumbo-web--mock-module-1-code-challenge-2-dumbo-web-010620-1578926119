class Company
  attr_reader :name, :founding_year
  @@all = []
  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year
    @@all << self
  end
  def self.all
    end 
  def freebies
    freebies.map do |freebies|
    freebies.company
      end
   end
   def devs
    self.dev.map(&:companies).uniq
  end
  def company
    Freebie.all.select do |freebie_instance|
    freebie_instance.company == self
    end
  end
  end
