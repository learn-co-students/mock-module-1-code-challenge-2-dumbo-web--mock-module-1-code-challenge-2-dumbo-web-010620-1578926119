# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Company instances
capcom = Company.new("Capcom", 1970)
sega = Company.new("Sega", 1960)

# Dev instances
ventes = Dev.new("Ventes")
tenzin = Dev.new("Tenzin")

# Freebie instances initialize with (item_name, company, dev)
keychain1 = Freebie.new("Sonic keychain", sega, ventes)
keychain2 = Freebie.new("Tails keychain", sega, tenzin)
wristband1 = Freebie.new("MVC wristband", capcom, tenzin)
wristband2 = Freebie.new("SF wristband", capcom, ventes)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
