class Dev
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
  end
  def freebies
    freebies.map do |freebies|
    freebies.dev
    end
 end
 def companies
  self.dev.map(&:companies).uniq
end
 def dev
  Freebie.all.select do |freebie_instance|
  freebie_instance.dev == self
  end
end

end
