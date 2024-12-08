class Company
  attr_reader :name, :founding_year
  @@all = []

  def initialize(name, founding_year)
    @name = name
    @founding_year = founding_year
    @@all << self.all
  end
# - `Company#initialize(name, founding_year)` [I think that was there]
#   - should initialize with a name (string) and founding_year (integer) [same as above]
# - `Company#name`
#   - should return the name of the company [same]
# - `Company#founding_year`
#   - should return the founding_year [same]
# - `Company.all`
#   - Returns an array of all Company instances  ******** should really make sure I know how to do this one.


  def all
    @@all    #what does this do? i think it creats a method that produces the total instances of companies 
  end

  # def new_company_freebie.new 
    #returns array
  # end

  # def new_devs.new
  #returns a new unique array of devs that . referece the freebie and dev intot he method



#^
### Object Relationship Methods

#### Company

# - `Company#freebies`
#   - returns an array of all the freebies given out by the company
# - `Company#devs`
#   - returns a **unique** array of all the devs who received freebie(s) from the company

# def give_freebie(dev,item_name) 


# end

#^ write code above
### Aggregate and Association Methods

# #### Company

# - `Company#give_freebie(dev, item_name)`
#   - takes a `dev` (an instance of the `Dev` class) and an `item_name` (string) as arguments, and creates a new `Freebie` instance associated with this company and the given dev
# - `Company.oldest_company`
#   - returns the `Company` instance with the earliest founding year
# - `Company.most_distributed`
#   - should return an instance of `Company` which has the most freebies given out to devs

# oh boy, I'm in danger


end