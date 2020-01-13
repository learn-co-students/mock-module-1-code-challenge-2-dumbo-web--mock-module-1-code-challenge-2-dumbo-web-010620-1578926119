class Company
  attr_reader :name, :founding_year

  @@all = []

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year

    @@all << self
  end

  def give_freebie(dev, item_name)
    new_free = Freebie.new(item_name, self, dev)
  end

  def self.oldest_company
    all_years = Company.all.map do |corp_inst|
      corp_inst.founding_year
    end
    all_years.max
  end

  def self.most_distributed
    binding.pry
    most = Freebie.all.max_by do |free|
      free.company.count
    end
    most
  end



  def self.all
    @@all
  end

end
