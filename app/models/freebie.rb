class Freebie
    attr_reader :item_name, :company, :dev
    @@all = []
    def initialize(item_name,company,dev)
        @item_name=item_name
        @company=company
        @dev=dev 
    end 
    def self.all
        @@all
    end
   def print_details
   puts `#{self.dev's.name} owns a #{self.freebie's.item_name} from #{self.company's.name}`
     end
end
