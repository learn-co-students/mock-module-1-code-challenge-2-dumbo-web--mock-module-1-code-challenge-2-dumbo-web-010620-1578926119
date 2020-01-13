require_relative 'dev.rb'
require_relative 'company.rb'
class Freebie
    attr_reader :item_name, :company, :dev
    @@all = []
    def initialize(item_name, company, dev)
        @item_name = item_name
        @company = company
        @dev = dev
        @@all << self
    end

    # def dev
    #     #self.dev
    # end

    # def company
    # end
    def print_details
        
    end


    def self.all
        @@all
    end
end

# [x] `Freebie#initialize(item_name, company, dev)` should initialize with an item name (string), company (`Company` instance) and dev (`Dev` instance)
# [x] `Freebie#item_name` should return the name of the item, ie. `"sticker"` or `"water bottle"`
# [x] `Freebie.all`Returns an array of all Freebie instances

# [ ]`Freebie#dev` should return the `Dev` instance for this freebie
# [ ]`Freebie#company` should return the `Company` instance for this freebie
