# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1=Company.new("Phizer", 1902)
c2=Company.new("RiteAid", 1900)
d1=Dev.new("idk")
d2=Dev.new("idk2")
f1=Freebie.new("medicine", "Phizer", "idk")
f2=Freebie.new("bandage", "RiteAid", "idk2")


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
