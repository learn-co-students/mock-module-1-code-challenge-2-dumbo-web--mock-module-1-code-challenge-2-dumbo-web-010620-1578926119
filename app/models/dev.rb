class Dev
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @all = self.all
  
  end

  def dev (name)
    @name = name #this is a getter? already writen by attr_reader I suppose
  end
    

  def def_all
    @@all # what?
end


# `Dev#initialize(name)`
# - should initialize with a name (string) I think that's it
# - `Dev#name`
# - should return the name of the dev 
# - `Dev.all`
# - Returns an array of all Dev instances

# #### Dev

# - `Dev#freebies`
#   - returns an array of all the freebies that the dev owns
# - `Dev#companies`
#   - returns a **unique** array of all the companies that the dev received freebie(s) from

# #### Dev

# - `Dev#received_one?(item_name)`
#   - accepts an item_name (string) and returns true if any of the freebies associated with the dev has that item_name, otherwise returns false
# - `Dev#give_away(dev, freebie)`
#   - accepts a `Dev` instance and a `Freebie` instance, changes the freebie's dev to be the given dev
# - `Dev.freebie_hoarder`
#   - returns *one* dev instance for the dev who owns the most amount of freebies
