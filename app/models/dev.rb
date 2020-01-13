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
    Freebie.all.select{|freebies| freebies.dev == self}
  end

  def companies
    list_of_freebies = Freebie.all.select{|freebies| freebies.dev == self}
    new_array = list_of_freebies.map{|free| free.company}
    new_array.uniq
  end

  def received_one?(item_name)
    dev_items = self.freebies.map{|freebies| freebies.item_name}
    if dev_items.find{|item| item == item_name}
      true
    else
      false
    end
  end

  def give_away(dev,freebie)
    freebie.dev = dev
  end

  def self.freebie_horder
    
  end

end
