# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# ------------------Devs----------------------------
elon = Dev.new("Elon Musk")
bill = Dev.new("Bill Gates")
steve = Dev.new("Steve Jobs")

# ------------------Company-------------------------
tesla = Company.new("Tesla", 2003)
microsoft = Company.new("Microsoft", 1975)
apple = Company.new("Apple", 1976)

# ------------------freebie-------------------------
cc_cookie = Freebie.new("Chocolate Chip Cookie", microsoft, bill)
rb_cookie = Freebie.new("Raisin Bran Cookie", tesla, elon)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
