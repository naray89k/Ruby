#! /usr/bin/env ruby

story = "Once upon a time in a land far, far away..."

#### Tips
# String in ruby is mutable.

# Extracting single character in a string.
p story
p story.length
p story[5]
p story[-1]
p story[-20]
p story[100]
p story[-100]

# =============
puts
puts "Slice Method"
puts
# =============

p story.slice(5)
p story.slice(-1)
p story.slice(-20)
p story.slice(100)
p story.slice(-100)

# Extracting a substring from a string.
# =============
puts
puts "Extracting Substring"
puts
# =============
p story[5, 4]
p story.slice(5,4)

p story[0, 10]
p story.slice(0, 10)

p story[0, story.length]
p story.slice(0, story.length())

p story[-7, 7]
p story.slice(-7, 7)

# Extracting a substring from a string using range operator
# ===================================
puts
puts "Extracting Substring using range operator"
puts
# =============
puts "With double dots, inclusive of last element"
p story[36..42]
p story.slice(36..42)
puts

puts "With triple dots, exclusive of last element"
p story[36...42]
p story.slice(36...42)
puts

puts "With range end which is exceeding the length of string"
p story[36...100]
p story.slice(36...100)

puts "With range end with negative values, double dots"
p story[36..-1]
p story.slice(36..-1)
puts

puts "With range end with negative values, triple dots"
p story[36...-1]
p story.slice(36...-1)
puts
