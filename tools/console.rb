# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cm = Company.new("Google", 1998)
cm1 = Company.new("Apple", 2003)
cm2 = Company.new("Flatiron", 2014)

dv = Dev.new("John")
dv1 = Dev.new("Rachel")
dv2 = Dev.new("Isaac")

fb = Freebie.new("Sticker", cm, dv)
fb1 = Freebie.new("Water bottle", cm1, dv1)
fb2 = Freebie.new("Sticker", cm1, dv2)
fb3 = Freebie.new("Mousepad", cm2, dv2)
fb4 = Freebie.new("Pin", cm, dv1)


# For our purposes, a Company has many Freebies, 
# a Dev has many Freebies, and a Freebie belongs to a 
# Dev and to a Company.

# Company -<Freebies>- Dev



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
