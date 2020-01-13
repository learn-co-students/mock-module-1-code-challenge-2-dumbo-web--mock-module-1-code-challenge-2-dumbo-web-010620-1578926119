# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#companies
google = Company.new("google",1992)
amazon = Company.new("amazon",1999)
snapchat = Company.new("snapchat",2012)

#devs
mari = Dev.new("mari")
harmony = Dev.new("harmony")
ellie = Dev.new("ellie")

#freebies
stress_ball = Freebie.new("stress ball",google,mari)
rubix_cube = Freebie.new("rubix cube",amazon,harmony)
notepad = Freebie.new("notepad",snapchat,ellie)
book = Freebie.new("book",amazon,ellie)
glasses = Freebie.new("glasses",amazon,harmony)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
