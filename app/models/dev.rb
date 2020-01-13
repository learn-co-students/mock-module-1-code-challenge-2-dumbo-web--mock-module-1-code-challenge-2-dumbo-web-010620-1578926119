class Dev
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def freebies
    Freebie.all.select do |freeb|
      freeb.dev == self
    end
  end

  def companies
    list_of_companies = freebies.map do |freeb|
      freeb.company.name
    end

    list_of_companies.uniq
  end

  def self.all
    @@all
  end

end
