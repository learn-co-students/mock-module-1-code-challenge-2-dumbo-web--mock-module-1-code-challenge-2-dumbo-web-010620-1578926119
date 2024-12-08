class Freebie
    attr_reader :item_name, :company, :dev 

    @@all = [] 
    def initialize(item_name, company, dev)
        @item_name = item_name
        @company = company 
        @dev = dev 

        @@all << self 
    end 

    def self.company 
        Company.all  
    end
    
    def self.dev 
        Dev.all 
    end 

    def self.all 
        @@all 
    end 
end
