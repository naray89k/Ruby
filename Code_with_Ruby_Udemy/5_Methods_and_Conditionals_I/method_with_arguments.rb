#! /usr/bin/env ruby

expression = "I am outside of function"

def praise_person(name, age)
    puts "#{name} is doing really great"
    puts "#{name} is highly skilled in programming"
    puts "#{name} is #{age} old"
    puts
end

praise_person "Narayanan", "34"
praise_person "Vaanadhi", "5"

# But the best practice to call a method is as below.
praise_person("Narayanan", "34")
praise_person("Vaanadhi", "5")
