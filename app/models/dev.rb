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
    @@freebies
  end

  def companies
    @@companies.uniq!
  end

  def received_one?(item_name)
    self.include? 'item_name'
  end

  def give_away(dev, freebie)
    
  end

  def freebies_hoarder
    @@freebies.max
  end

end
