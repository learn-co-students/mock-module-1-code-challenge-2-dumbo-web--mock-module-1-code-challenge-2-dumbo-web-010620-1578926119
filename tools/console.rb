# require and load the environment file
require_relative '../config/environment.rb'
require_relative '../app/models/freebie.rb'
require_relative '../app/models/dev.rb'
require_relative '../app/models/company.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#---------------freebie---------------#
# item_name, company, dev
sticker = Freebie.new("sticker", "Flatiron", "Bobby")
mug = Freebie.new("mug", "Fullstack", "Alice")
water_bottle = Freebie.new("water_bottle", "NYU", "Martha")


#---------------dev---------------#

bobby = Dev.new("Bobby")
alice = Dev.new("Alice")
martha = Dev.new("Martha")



#---------------company---------------#
# :name, :founding_year

flatiron = Company.new("Flatiron", 2006)
fullstack = Company.new("Fullstack", 2010)
starbucks = Company.new("Starbucks", 2005)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
