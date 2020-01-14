#! /usr/bin/env ruby

# Without temporary block argument
3.times { puts "Narayanan is a stubborn guy" }

puts

# With temporary block argument
3.times { |i| puts " Loop: #{i} Narayanan is a stubborn guy" }

puts

# without temporary block argument
#=begin
3.times do
  puts "Narayanan is a stubborn guy"
  puts "I am having so much fun learning Ruby"
end
#=end

puts

# with temporary block argument
#=begin
3.times do |i|
  puts "Loop #{i}. Narayanan is a stubborn guy"
  puts "Loop #{i}. I am having so much fun learning Ruby"
end
#=end
