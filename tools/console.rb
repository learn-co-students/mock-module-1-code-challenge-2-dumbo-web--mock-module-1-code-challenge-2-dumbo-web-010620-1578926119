# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
apple = Company.new("apple", 1994)
con = Company.new("Con edison", 1880)
ibm = Company.new("IBM", 1890)
tesla = Company.new("tesla", 2020)

d1 = Dev.new("James")
d2 = Dev.new("patricia")
d3 = Dev.new("Nicole")
d4 = Dev.new("Horse")

string = Freebie.new("lanyard", apple, d1)
discont = Freebie.new("10% off electric bill", con, d3)
tulip = Freebie.new("laptop raffle", ibm, d4)
str = Freebie.new("sticker", tesla, d2)
str1 = Freebie.new("some self righteous poster", apple, d3)
str1 = Freebie.new("another self-righteous poster", tesla, d1)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
