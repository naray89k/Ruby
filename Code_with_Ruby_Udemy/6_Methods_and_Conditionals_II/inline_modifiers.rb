#! /usr/bin/env ruby

number = 5000
verified = true

if number > 2500
  puts "Huge Number!"
end

# if oneliner
puts "Huge Number!" if number > 2500
puts "Huge Number!" if number > 2500 && verified


x = 8
unless x > 10
  puts "x is NOT greater than 10"
end

# unless oneliner
puts "x is NOT greater than 10" unless x > 10
