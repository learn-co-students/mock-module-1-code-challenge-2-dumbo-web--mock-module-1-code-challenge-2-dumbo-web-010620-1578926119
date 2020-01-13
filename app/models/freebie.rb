class Freebie
attr_accessor :item_name, :company, :dev
@@all = []
def initialize(item_name, company, dev)
    @item_name = item_name
    @company = company
    @dev = dev
    @all << self
end

def self.all
    @@all
end

def dev
    @@all.find do |freebie|
        freebie.dev == self
    end

    def company 
        Company.all.find do |freebie|
            freebie.company == self
        end


end
