#! /usr/bin/env ruby

numbers = 143..769
p numbers.include?(190)

alphabets = "A".."E"
p alphabets.include?('Z')
p alphabets.include?('B')

# Triple Equal '===' works on certain situations as include
# check operator.

p alphabets === 'Z'
p alphabets === 'B'
p alphabets === 'E'

puts
puts "--- With Triple Dot ---"
alphabets = "A"..."E"
p alphabets === 'E'

puts
puts "--- With Numbers ---"
p numbers === 190
p numbers === 142
p numbers === 769

puts
puts "--- With Triple Dot ---"
numbers = 143...769
p numbers === 769
