class Dev
  attr_reader :name
  @@all = []

  # No need to duplicate what's written in the attr_reader
  # def name
  #   @name
  # end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def freebies
    all_freebies = Freebie.all.select do |free_instance|
      free_instance.dev == self
    end
    all_freebies
  end

  def companies
    self.freebies.map { |freebie| freebie.company }.uniq

    # shorthand way to map
    # self.freebies.map(&:company).uniq
  end

  def received_one?(item_name)
    items = self.freebies.map { |free_instance| free_instance.name }

    # this works
    # if items.find { |item| item == item_name}
    #   true
    # else
    #   false
    # end

    # this also works
    # !!items.find { |item| item == item_name}

    # this works as well
    items.include?(item_name)
  end

  def give_away(dev, freebie)
    freebie.dev = dev

    # the following code is just to account for whether the dev(self)
    # actually owns the freebie they're trying to give away to someone else
    # if freebie.dev == self
    #   freebie.dev = dev
    # else
    #   "Error: freebie does not belong to self"
    # end
  end

  def self.freebie_hoarder
    Dev.all.max_by { |dev| dev.freebies.length }
  end

  # This is not a deliverable, I just wanted to throw it in :)
  def self.most_modest
    Dev.all.min_by { |dev| dev.freebies.length }
  end

end
