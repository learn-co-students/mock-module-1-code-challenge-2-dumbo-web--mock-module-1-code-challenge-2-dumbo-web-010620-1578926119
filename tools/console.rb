# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
company1 = Company.new("Google", 1980)
company2 = Company.new("Twitter", 2005)

dev1 = Dev.new("Tyler")
dev2 = Dev.new("Mike")

freebie1 = Freebie.new("sticker",company1,dev1)
freebie2 = Freebie.new("lanyard",company1,dev1)
freebie3 = Freebie.new("pen",company1,dev1)
freebie4 = Freebie.new("sticker",company1,dev2)
freebie5 = Freebie.new("lanyard",company1,dev2)
freebie6 = Freebie.new("pen",company1,dev2)


freebie7 = Freebie.new("poster",company2,dev1)
freebie8 = Freebie.new("pencil",company2,dev1)
freebie9 = Freebie.new("shirt",company2,dev1)
freebie10 = Freebie.new("folder",company2,dev2)
freebie11 = Freebie.new("chapstick",company2,dev2)
freebie12 = Freebie.new("toy",company2,dev2)

freebie13 = Freebie.new("toy",company2,dev2)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
