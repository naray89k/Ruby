#! /usr/bin/env ruby

# Ruby uses short-circuit evaluation when it is handling
# multiple condition in loops.

age = 25
ticket = "General Admission"
id = true

if age > 21 && ticket == "General Admission" && id
  puts "Congratulations, Welcome to the show"
end

puts "---- ----"
puts

budget = 10
price = 5
mood = "Happy"
if budget > price || mood == "Happy"
  puts "I am going to buy the item!"
end
