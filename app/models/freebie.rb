class Freebie
    attr_accessor :item_name
    @@all = []

    def initialize(item_name, company, dev)
        @item_name = item_name
        @company = company
        @dev = dev 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def item_name 
        self.item_name
    end 

    def dev 
        freebie.dev 
    end 

    def company 
        freebie.dev 
    end 

    def print_details
        "#{dev.name} owns a #{item_name} from #{company.name}."
    end 
end 