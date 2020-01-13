class Dev
  attr_reader :name
  @@all = [] 

  def initialize(name)
    @name = name
    @@all << self 
  end

  def dev_freebies 
    dev_free = Freebie.all.select do |free_dev|
      free_dev.dev == self 
    end 
  end 

  def dev_companies 
      dev_comp = Company.all.select do |dev_comps|
        dev_comps.dev == self 
      end 
  end 

  

  def self.freebie 
      Freebie.all 
  end 

  def self.company
      Company.all 
  end 
  def self.all 
      @@all 
  end 
end
