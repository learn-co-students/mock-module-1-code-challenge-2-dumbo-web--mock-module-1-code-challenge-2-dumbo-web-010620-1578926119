class Freebie
  attr_reader :name, :company
  attr_accessor :dev

  @@all = []

  def initialize(name, company, dev)
    @name = name
    @company = company
    @dev = dev
    @@all << self
  end

  # def company
  #   @company
  # end

  def self.all
    @@all
  end

  def print_details
    "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
  end
end
