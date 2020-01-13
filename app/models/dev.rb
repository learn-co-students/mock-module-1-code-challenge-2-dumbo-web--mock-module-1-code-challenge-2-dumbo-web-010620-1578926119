

class Dev
  attr_reader :name

  def initialize(name)
    @name = name
    self << @@all
  end

  def self.all
    @@all
  end


end
