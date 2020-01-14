#! /usr/bin/env ruby

first_name = "Harry"
last_name = "Potter"

p first_name + " " + last_name
full_name = first_name + " " + last_name

p "#{full_name}"

# The Below two parameters actually modifies the first_name variable.
# p first_name.concat(last_name)
# p first_name << " " << last_name << " " << "Wizard"
puts
p first_name, last_name
puts

# p last_name.prepend(first_name)
# puts
p first_name, last_name
