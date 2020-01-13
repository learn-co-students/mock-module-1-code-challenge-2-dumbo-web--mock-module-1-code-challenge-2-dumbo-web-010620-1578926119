# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

amazon = Company.new("Amazon", 1991)
google = Company.new("Google", 1998)
microsoft = Company.new("Microsoft", 1975)

mari = Dev.new("Mari")
samanta = Dev.new("Samanta")

Freebie.new("bottle", google, mari)
Freebie.new("bag", google, mari)
Freebie.new("power strip", google, mari)
Freebie.new("power strip", amazon, samanta)
Freebie.new("sticker", google, mari)
Freebie.new("sticker", amazon, mari)
Freebie.new("sticker", amazon, samanta)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
