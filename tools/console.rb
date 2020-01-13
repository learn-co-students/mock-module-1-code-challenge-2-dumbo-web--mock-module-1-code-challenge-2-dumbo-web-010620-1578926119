# require and load the environment file
require "pry"
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

richters = Company.new("ricthers", 1998)

smithsco = Company.new("smiths_assoc", 2001)

refinery29 = Company.new("refinery29", 2012)

datadog = Company.new("Datadog", 2011)

# need to practice more

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
