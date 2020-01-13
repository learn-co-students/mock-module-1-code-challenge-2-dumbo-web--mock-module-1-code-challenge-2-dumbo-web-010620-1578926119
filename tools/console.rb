# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
# ruby tools/console.rb 


# Company.new(name, founding_year)
microsoft = Company.new("Microsoft", 1850)
apple = Company.new("Apple", 1950)
bloomberg = Company.new("Bloomberg", 2000)


# Dev.new(name)
theo = Dev.new("Theo")
mike = Dev.new("Mike")
steven = Dev.new("Steven")




f1 = bloomberg.give_freebie(mike, "sticker")



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
