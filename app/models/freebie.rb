class Freebie

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

    def dev
        self.dev 
    end

    def company
        self.company
    end 

end
