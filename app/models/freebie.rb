class Freebie
    attr_reader :name, :dev, :conpany

    @@all = []
    def initialize(item_name, company, dev)
        @item_name = iten_name
        @company = company
        @dev = dev
        @@all << self.all
    
    end
end







# `Freebie#initialize(item_name, company, dev)`
# - should initialize with an item name (string), company (`Company` instance) and dev (`Dev` instance)
# # - `Freebie#item_name`
# # - should return the name of the item, ie. `"sticker"` or `"water bottle"`
# # - `Freebie.all`
# # - Returns an array of all Freebie instances

# #### Freebie

# - `Freebie#dev`
#   - should return the `Dev` instance for this freebie
# - `Freebie#company`
#   - should return the `Company` instance for this freebie

# #### Freebie

# - `Freebie#print_details`
#   - should return a string formatted as follows: `{insert dev's name} owns a {insert freebie's item_name} from {insert company's name}`
