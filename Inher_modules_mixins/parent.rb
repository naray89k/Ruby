class Parent
	def say_hello
		puts "Hello from #{self}"
	end
end
p = Parent.new
p.say_hello

# Subclass the parent...
class Child < Parent
end
c = Child.new
c.say_hello

puts "super class of Child class: #{Child.superclass}"
puts "super class of Parent class: #{Parent.superclass}"
