class Freebie < Company
    attr_reader :item_name, :company, :dev

    @@all = []

    def initialize(item_name, company, dev)
        super(company, dev)
        @item_name = item_name

        @@all << self
    end

    def self.all

        @@all

    end


end # end of class
