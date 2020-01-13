# require and load the environment file
require_relative '../config/environment.rb'
require 'pry'
# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
company1 = Company.new("Google", 1995)
company2 = Company.new("Apple", 1996)
company3 = Company.new("Facebook", 1997)

dev1 = Dev.new("Weng")
dev2 = Dev.new("Jin")
dev3 = Dev.new("Richard")

freebie1 = Freebie.new("hat", company1, dev1)
freebie2 = Freebie.new("cup", company3, dev1)
freebie3 = Freebie.new("ball", company2, dev1)
freebie4 = Freebie.new("hat", company1, dev2)
freebie5 = Freebie.new("ball", company2, dev2)
freebie6 = Freebie.new("cup", company1, dev3)
freebie7 = Freebie.new("ball", company2, dev3)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
