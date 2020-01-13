class Dev

  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end 


#   - `Dev#freebies`
#   - returns an array of all the freebies that the dev owns
  def dev_freebies

  end



# - `Dev#companies`
#   - returns a **unique** array of all the companies that the dev received freebie(s) from
  def dev_companies
    dev.self.select do |company|
      company.
    end
  end
end


end
