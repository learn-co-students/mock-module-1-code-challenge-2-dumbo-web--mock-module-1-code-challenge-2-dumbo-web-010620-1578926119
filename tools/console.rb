# require and load the environment file
require_relative '../config/environment.rb'
require_relative '../app/models/company.rb'
require_relative '../app/models/dev.rb'
require_relative '../app/models/freebie.rb'
# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# name, founding_year
google = Company.new("Google", 1978)
twitter = Company.new("Twitter", 2008)
# name
dev1 = Dev.new("Dev1")
dev2 = Dev.new("Dev2")
# item_name, company, dev
free1 = Freebie.new("sticker",google, dev1)
free2 = Freebie.new("keychain",twitter, dev2)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
