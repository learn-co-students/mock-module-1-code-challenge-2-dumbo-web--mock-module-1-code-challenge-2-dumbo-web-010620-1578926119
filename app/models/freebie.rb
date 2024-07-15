class Freebie

    attr_accessor :item_name, :dev
    attr_reader :company
    @@all = []

    def initialize(item_name,company,dev)
        @item_name = item_name
        @company = company
        @dev = dev
        @@all << self
    end

    def self.all
        @@all
    end

    def print_details
        "#{@dev.name} owns a #{@item_name} from #{@company.name}"
    end


end
