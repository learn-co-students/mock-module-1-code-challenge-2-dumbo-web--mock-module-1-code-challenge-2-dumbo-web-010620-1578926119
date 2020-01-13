# require and load the environment file
require_relative '../config/environment.rb'
require_relative '/Users/iqra/Development/code/mock-module-1-code-challenge-2-dumbo-web--mock-module-1-code-challenge-2-dumbo-web-010620-1578926119/app/models/company.rb'
# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

google = Company.new("Google", 2000)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
