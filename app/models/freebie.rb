class Freebie
    attr_accessor :item_name, :company, :dev

    @@all = []

    def initialize(item_name, company, dev)
        @item_name = item_name
        @company = company
        @dev = dev

        @@all << self
    end

    def dev
        give_match = Freebie.all.find do |free_instance|
            free_instance.item_name == self.item_name
        end
        give_match.dev
    end

    def company
        give_match = Freebie.all.find do |free_instance|
            free_instance.item_name == self.item_name
        end
        give_match.company
    end

    def print_details
        puts "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
    end

    def self.all
        @@all
    end

end
