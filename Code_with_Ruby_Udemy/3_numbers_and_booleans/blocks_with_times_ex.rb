#! /usr/bin/env ruby

# Use the times method to output the
# first 10 multiples of 3 (3, 6, 9, ... 30)

10.times do |i|
  puts "#{3 * (i + 1)}"
end

puts 

10.times { |i| puts "#{3 * (i + 1)}" }
