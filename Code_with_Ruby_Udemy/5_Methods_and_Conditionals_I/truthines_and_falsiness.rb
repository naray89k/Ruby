#! /usr/bin/env ruby

if false
  puts "This is evaluated as false"
end

if nil
  puts "This is evaluated as false"
end

# =======
# Except false and truth, everything else in Ruby
# will be evaluated as True in Ruby.

if true
  puts "This is evaluated as true"
end

if 0
  puts "0 is evaluated as true"
end

if "Hello"
  puts "Hello is evaluated as true"
end
