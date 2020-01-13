# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1 = Company.new("Apple", 2010)
c2 = Company.new("Banana", 2011)
c3 = Company.new("Cherry", 2012)

d1 = Dev.new("Mike")
d2 = Dev.new("Eric")
d3 = Dev.new("Rick")

f1 = Freebie.new("Item1", c1, d1)
f2 = Freebie.new("Item2", c1, d2)
f3 = Freebie.new("Item3", c2, d3)
f4 = Freebie.new("Item4", c3, d1)
f5 = Freebie.new("Item5", c3, d3)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
