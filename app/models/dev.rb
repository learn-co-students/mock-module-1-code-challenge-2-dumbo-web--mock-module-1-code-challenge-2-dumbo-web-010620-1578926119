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
    Freebie.all.select { |free| free.dev == self } 
  end 

  def received_one?(item_name)
    Freebie.all.select do |n|
      if n.item_name == item_name
        return true 
      else
        return false
      end
    end 
  end 

  def freebie_hoarder
    Freebie.all.select do |person|
      person
    end 
  end 

  def give_away(dev, freebie) 
    
  end 

end
