class Dev
  attr_reader :name
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @all
  end

  def freebies
    Freebies.all.select do |freebies|
      freebies.dev == self
    end

    def companies
     array= Freebies.company.select do |f|
        f.dev == self
      end
      array.uniq
    end


end
