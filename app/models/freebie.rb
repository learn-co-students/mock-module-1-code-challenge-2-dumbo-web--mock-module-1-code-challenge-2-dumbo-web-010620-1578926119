class Freebie
    
    @@all = []
    attr_accessor :item_name, :company, :dev
    

    def inititalize(item_name = "sticker", company = "Flatiron", dev = "Alyssa")
        @item_name = item_name
        @company = company
        @dev = dev
        
        @@all << self
    end

    def self.all
        @@all 
    end


    def freebie_name
        freebie_name.item_name
    end


# - `Freebie#dev`
# - should return the `Dev` instance for this freebie
    def freebie_dev
        freebie.all.dev
    end

# - `Freebie#company`
# - should return the `Company` instance for this freebie
# def freebie_company
#     freebie.self.company
# end


end #end class Freebie
