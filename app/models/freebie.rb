class Freebie
    @attr_reader :item_name, :company, :dev

    @@all = []
    def initialize(item_name,company,dev)
        @item_name = item_name 
        @company = Company.new
        @dev = Dev.new

        @@all << self
    end

    def self.all
        @@all
    end

    def print_details
        "#{@dev} owns a #{@item_name} from #{@company}"
    end
end
