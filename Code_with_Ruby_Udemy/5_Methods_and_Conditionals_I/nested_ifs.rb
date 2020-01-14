#! /usr/bin/env ruby

# Ruby uses short-circuit evaluation when it is handling
# multiple condition in loops.

def meal_plan(time_of_week, time_of_day)
  if time_of_week.downcase == "weekday"
    if time_of_day.downcase == "breakfast"
      "Cereal"
    elsif time_of_day.downcase == "lunch"
      "Sandwich"
    elsif time_of_day.downcase == "dinner"
      "Chicken Nuggets"
    end
  elsif time_of_week.downcase == "weekend"
    if time_of_day.downcase == "breakfast"
      "French Toast"
    elsif time_of_day.downcase == "lunch"
      "BBQ Chicken Pizza"
    elsif time_of_day.downcase == "dinner"
      "Steak"
    end
  end
end

puts meal_plan("Weekend", "Dinner")
