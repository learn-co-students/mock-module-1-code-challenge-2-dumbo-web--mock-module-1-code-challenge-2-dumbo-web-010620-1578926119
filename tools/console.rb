# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# sample companies
google = Company.new('Google', 1998)
netflix = Company.new('Netflix', 1997)
microsoft = Company.new('Microsoft', 1975)
apple = Company.new('Apple', 1976)
patreon = Company.new('Patreon', 2013)

# sample Devs
dev0 = Dev.new('Lei')
dev1 = Dev.new('Otha')
dev2 = Dev.new('Lizel')
dev3 = Dev.new('Ian')
dev4 = Dev.new('Mike')
dev5 = Dev.new('Jessica')
dev6 = Dev.new('Tay')

net_sticker = Freebie.new('sticker', netflix, dev0)
net_sticker1 = Freebie.new('sticker', netflix, dev1)
net_sticker2 = Freebie.new('sticker', netflix, dev5)
net_sticker3 = Freebie.new('sticker', netflix, dev6)
net_mug = Freebie.new('cup', netflix, dev1)
g_mug = Freebie.new('cup', google, dev2)
net_mug1 = Freebie.new('cup', netflix, dev3)
g_mug2 = Freebie.new('cup', google, dev0)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
