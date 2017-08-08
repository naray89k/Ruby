def call_block
	puts "Start of method"
	#yield
	#yield
	puts "End of method"
end

call_block { puts "In the block" }

# We can think of yield as being something like a method call that invokes the block
# associated with the call to the method containing the yield

def who_says_what
	yield("Dave", "hello")
	yield("Andy", "goodbye")
end
who_says_what {|person, phrase| puts "#{person} says #{phrase}"}

# Code blocks are used throughout the Ruby library to implement iterators, which are methods
# that return successive elements from some kind of collection, such as an array:
animals = %w( ant bee cat dog ) # create an array
animals.each {|animal| puts animal } # iterate over the contents
[ 'cat', 'dog', 'horse' ].each {|name| print "name=#{name}\n" }
puts
[ 'cat', 'dog', 'horse' ].each {|name| puts "name=#{name}" }

#5.times { print "*" }
#3.upto(6) {|i| print i}
#('a'..'e').each {|char| print char}
5.times { puts "*" }
3.upto(6) {|i| puts i}
('a'..'e').each {|char| puts char}



# Proc
# Another way to create a Proc object is to bind a block of code using the lambda method; calling this method is essentially equivalent to calling Proc.new.
# First of all, Proc objects created with lambda have stricter argument checking than those created with Proc.new.
def makeShow_lambda(show)
	lambda {|host| show + " with " + host}
	#Proc.new {|host| show + " with " + host}
end	

def makeShow_proc(show)
	Proc.new {|host| show + " with " + host}
end
show1 = makeShow_lambda("Practical Cannibalism")
show2 = makeShow_proc("Cotillions in the Amazon")
puts show1
puts show2
puts show1.call("Hannibal Lector")
puts show2.call("Jack Hannah",1)  # The show2 proc objects accepts two arguments also without throwing any error.
puts show1.call("Kirstie Alley")
