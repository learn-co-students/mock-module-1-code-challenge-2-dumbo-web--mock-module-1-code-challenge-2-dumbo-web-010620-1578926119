class Freebie

    attr_accessor :dev, :company

    @all=[]

    def initialize(item_name, company, dev)
        @item_name = item_name
        @dev = dev
        @company = company
    end

    def def
       return @dev
    end

    def company
        return @company
    end

    def item_name
        return @item_name
    end

    def freebies

    end

    def all
        @all
    end
end
