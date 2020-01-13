class Dev
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def name 
    self.name 
  end 

  def self.all 
    @@all
  end 

  def freebies 
    Freebie.all.select {|freebie| freebie.dev == self}
  end 

  def companies 
    Company.all.map.uniq {|freebies|freebies.dev == self}
  end 
end
