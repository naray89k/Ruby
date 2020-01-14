#! /usr/bin/env ruby


def rate_my_food(food)
  case food
  when "Steak"
    "Pass the Steak sauce! Thats delicious!"
  when "Briyani"
    "Great Choice, My favourite food"
  when "Idly", "Dosa", "Poori"
    "Its a nice breakfast item"
  else
    "I don't know about the food"
  end
end

=begin
def calculate_school_grade(grade)
  case grade
  when 90..100
    "A"
  when 80..89
    "B"
  when 70..79
    "C"
  when 60..69
    "D"
  else
    "F"
  end
end
=end

# Another syntax, like one liner.
def calculate_school_grade(grade)
  case grade
  when 90..100 then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  else "F"
  end
end

puts rate_my_food("Steak")
puts "---- ----"
puts rate_my_food("Idly")
puts "---- ----"
puts calculate_school_grade(94)
puts "---- ----"
puts calculate_school_grade(73)
puts "---- ----"
puts calculate_school_grade(89)
puts "---- ----"
puts calculate_school_grade(15)
puts "---- ----"
puts calculate_school_grade(51)
