def n_times(thing)
	lambda {|n| thing * n }
end

p1 = n_times(23)
puts p1.call(3) # => 69
puts p1.call(4) # => 92
p2 = n_times("Hello ")
puts p2.call(3) # => "Hello Hello Hello "

# The method n_times returns a Proc object that references the method’s parameter, thing. 
# Even though that parameter is out of scope by the time the block is called, the parameter remains
# accessible to the block. This is called a closure—variables in the surrounding scope that are
# referenced in a block remain accessible for the life of that block and the life of any Proc object
# created from that block.

# Here’s another example—a method that returns a Proc object that returns successive powers of 2 when called:

def power_proc_generator
	value = 1
	lambda { value += value }
end

power_proc = power_proc_generator
puts power_proc.call
puts power_proc.call
puts power_proc.call