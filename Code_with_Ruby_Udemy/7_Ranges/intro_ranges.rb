#! /usr/bin/env ruby

nums = 1..5
p "#{nums}, #{nums.class}, #{nums.first}, #{nums.last}, #{nums.last(1)}"

nums = 1...5
p "#{nums}, #{nums.class}, #{nums.first}, #{nums.last}, #{nums.last(1)}"

# Note: (Food for thought)
# .last method in ranges created by double dot, triple dot behave in
# same way. though actual last element in .. and ... is different.
