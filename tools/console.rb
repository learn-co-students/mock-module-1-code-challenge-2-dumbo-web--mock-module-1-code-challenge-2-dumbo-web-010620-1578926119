# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end
# name, :founding_year
c1=Company.new("Arizona",1923)
c2=Company.new("Seatle",1999)
c3=Company.new("Washington",1922)






# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
