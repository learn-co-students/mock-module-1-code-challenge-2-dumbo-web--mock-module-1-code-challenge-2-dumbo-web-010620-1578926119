class Freebie
   attr_accessor :item_name, :company, :dev
   
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

   def print_details 
    return "#{dev.name} owns a #{self.item_name} from #{company.name}"
   end 
   
end
