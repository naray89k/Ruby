#! /usr/bin/env ruby

expression = "I am outside of function"

# The last expression of the function is the return value of the
# function. --> implicit returns
# the return statement ends the function and return a value
# mentioned / evaluated after it. --> explicit returns

def sum(a, b)
  # return a + b
  a + b
end

def product(a, b)
  # return a * b
  a * b
end

p sum(4, 6)
p product(4, 6)
