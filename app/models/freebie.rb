class Freebie
    attr_accessor :item_name, :company, :dev

    @@all = []

    def initialize(item_name, company, dev)
        @item_name = item_name
        @company = company
        @dev = dev
        @@all << self
    end

    def print_details
        "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
    end

    def self.all
        @@all
    end

end

# Freebie

# Freebie#print_details - DONE
#   should return a string formatted as follows: 
#   {insert dev's name} owns a {insert freebie's item_name} from {insert company's name}