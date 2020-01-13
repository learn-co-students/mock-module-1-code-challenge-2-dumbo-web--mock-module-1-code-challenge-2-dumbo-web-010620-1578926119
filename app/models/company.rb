class Company
  attr_reader :name, :founding_year
  @@all = []

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year
    @@all << self
  end

  def self.all
    @@all
  end

  def freebies
    Freebie.all.select do |freebie|
      freebie.company == self
    end
  end

  def devs
    array = self.freebies.map do |freebie|
      freebie.dev#.uniq
    end#.uniq
    array.uniq
  end

  def devs
    self.freebies.map { |freeb| freeb.dev }.uniq
  end

  def give_freebie(item_name, dev)
    Freebie.new(item_name, company, dev)
  end

  def self.oldest_company
    # this also works
    # sorted_companies = Company.all.sort_by do |company|
    #   company.founding_year
    # end
    # sorted_companies[0]

    # shorthand version
    # Company.all.sort_by(&:founding_year)[0]

    Company.all.min_by { |cmp| cmp.founding_year }
  end

  def self.most_distributed
    Company.all.max_by { |cmp| cmp.freebies.length }
  end

end
