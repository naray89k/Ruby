#! /usr/bin/env ruby

# respond_to predicate method is widely used to check
# whether a function/method is available on a object.

num = 1000
puts num.respond_to?("odd?")
puts num.respond_to?("even?")
puts num.respond_to?("class")
puts num.respond_to?("length")
puts num.respond_to?("length")
puts "hello".respond_to?("length")
puts num.respond_to?("next")
puts "hello".respond_to?("next")
puts "---- ----"
puts

# === Alternative way using symbol.
# representation startswith ':' then the method name without quotes
# Using the above method, when we pass the argument as string object is
# created, so the object will have string methods associated with it.
# Hence it is slightly memory consuming.
# However symbols(symbol objects) are very lightweight,

puts num.respond_to?(:odd?)
puts num.respond_to?(:even?)
puts num.respond_to?(:class)
puts num.respond_to?(:length)
puts num.respond_to?(:next)
