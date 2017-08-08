#! /usr/bin/ruby

a = [ 1, 3, "cat" ]
h = { dog: "canine", fox: "vulpine" }
# Create Enumerators
enum_a = a.to_enum
enum_h = h.to_enum
enum_a.next # => 1
enum_a.next # => 3
enum_a.next # => "cat"
enum_h.next # => [:dog, "canine"]
enum_h.next # => [:fox, "vulpine"]

short_enum = [1, 2, 3].to_enum
long_enum = ('a'..'z').to_enum
loop do
	puts "#{short_enum.next} - #{long_enum.next}"
	#puts "#{long_enum.next}"
end


#result = []
#[ 'a', 'b', 'c' ].each_with_index {|item, index| result << [item, index] }
#result # => [["a", 0], ["b", 1], ["c", 2]]
#puts "#{result}"

triangular_numbers = Enumerator.new do |yielder|
	number = 0
	count = 1
	loop do
		number += count
		count += 1
		yielder.yield number
	end
end

15.times{print triangular_numbers.next, " "}
puts
p triangular_numbers.first(15)
puts

def infinite_select(enum, &block)
	Enumerator.new do |yielder|
		enum.each do |value|
			# print value , " "
			yielder.yield(value) if block.call(value)
		end
	end
end

p infinite_select(triangular_numbers) {|val| val % 2 == 0}.first(5)
puts


fibonacci_series = Enumerator.new do |yielder|
	a = -1
	b = 1
	c = 0
	loop do
		c = a + b
		a = b
		b = c
		yielder.yield c
	end
end

10.times{print fibonacci_series.next, " "}
puts
p fibonacci_series.first(10)
puts

arithmetic_progression = Enumerator.new do |yielder|
	a, n, d = 1, 1, 4	# parallel assignment
	loop do
		yielder.yield (a+((n-1)*d))
		n += 1
	end
end

def ap_infinite_select(enum, &block)
	Enumerator.new do |yielder|
		enum.each do |value|
			#print value , " "
			#yielder.yield(value) if block.call(value)
			if block.call(value)
				#print value
				yielder.yield(value)
			end
		end
	end
end

p ap_infinite_select(arithmetic_progression) {|val| val % 10 == 9}.first(5)

geometric_progression = Enumerator.new do |yielder|
	a, n, r = 1, 1, 2	# parallel assignment
	loop do
		yielder.yield (a*(r**(n-1)))
		n += 1
	end
end
#puts "#{arithmetic_progression.next}"
#puts "#{arithmetic_progression.next}"
#puts "#{arithmetic_progression.next}"

#25.times{print arithmetic_progression.next, " "}
#p arithmetic_progression.first(25)
puts ""
#25.times{print geometric_progression.next, " "}
#p geometric_progression.first(25)

# puts "#{triangular_numbers.next}"
# puts "#{triangular_numbers.next}"
# puts "#{triangular_numbers.next}"
# 
# puts "#{fibonacci_numbers.next}"
# puts "#{fibonacci_numbers.next}"
# puts "#{fibonacci_numbers.next}"


#5.times{ puts triangular_numbers.next }
#puts "#{triangular_numbers.class}"
#puts "#{arr.class}"
#sum = 0
#1..10.times{ sum += fibonacci_series.next }
#puts sum
