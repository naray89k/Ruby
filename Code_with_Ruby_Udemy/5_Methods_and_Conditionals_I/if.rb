#! /usr/bin/env ruby

# Only if
if 5 < 10
  puts "Five is less than 10"
end

puts "---- ----"
puts

number = 6
if number.odd?
  puts "#{number} is an odd number"
else
  puts "#{number} is an even number"
end

puts "---- ----"
puts

password = "topsecret"
if password == "topsecret"
  puts "Congrats, you have logged into our system"
end

puts "---- ----"
puts

name = 'gandhimathi'
if name.length == 11
  puts "That word has 11 characters"
end

puts "---- ----"
puts

word = "madam"
if word.include?("ad") and word.include?("mad") and word.include?("dam")
  puts "That word has ad, mad, dam in it"
end
