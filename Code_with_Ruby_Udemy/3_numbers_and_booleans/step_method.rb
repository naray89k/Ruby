#! /usr/bin/env ruby

# first argument is the end element(boundary).
# second argument is step.
0.step(100, 5) { |i| puts "#{i}" }

=begin
0.step(100, 5) do |i|
  puts "#{i}"
end
=end
