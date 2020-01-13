class Dev
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def freebies
    all_free = Freebie.all.select do |free_instance|
      # binding.pry
      free_instance.dev == self
    end
    all_free
  end

  def companies
    all_free = Freebie.all.select do |free_instance|
      free_instance.dev.name == self.name
    end
    all_company = all_free.map do |free|
      free.company.name
    end
    all_company.uniq
   # binding.pry
  end

  def received_one?(item_name)
    associated = Freebie.all.select do |one|
      one.dev.name == self.name
    end

    items = associated.map do |one_inst|
      one_inst.item_name
    end
    items.each do |inst|
      if inst == item_name
        true
      else
        false
      end
    end
  end

  def give_away(dev, freebie)

    freebie.dev = dev
    
    dev_assoc = Freebie.all.find do |one|
      one.dev.name == self.name
    end
    # dev_assoc.dev.name = dev
    # dev_assoc.
  end

  def self.most_hoarder
    freebie_names = Freebie.all.map do |one_inst|
      one_inst.dev.name
    end
    freebie_names.count
    # binding.pry
  end

  def self.all
    @@all
  end

end
