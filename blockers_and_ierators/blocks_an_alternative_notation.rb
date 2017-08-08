#! /usr/bin/ruby
# Ruby has another way of creating Proc objects. Rather than write this:
# lambda { |params| ... }
# you can now write the following:9
# -> params { ... }
# The parameters can be enclosed in optional parentheses. Here’s an example:
proc1 = -> arg { puts "In proc1 with #{arg}" }
proc2 = -> arg1, arg2 { puts "In proc2 with #{arg1} and #{arg2}" }
proc3 = ->(arg1, arg2) { puts "In proc3 with #{arg1} and #{arg2}" }
proc1.call "ant"
proc2.call "bee", "cat"
proc3.call "dog", "elk"

def my_if(condition, then_clause, else_clause)
	if condition
		then_clause.call
	else
		else_clause.call
	end
end
5.times do |val|
	my_if val < 2, -> { puts "#{val} is small" }, -> { puts "#{val} is big" }
end


def my_while(cond, &body)
	while cond.call
		body.call
	end
end
a = 0

my_while -> { a < 3 } do
	puts a
	a += 1
end
puts a


# Block Parameter Lists
proc1 = lambda do |a, *b, &block|
	puts "a = #{a.inspect}"
	puts "b = #{b.inspect}"
	block.call
end
proc1.call(1, 2, 3, 4) { puts "in block1" }

# And here’s one using the new -> notation:

proc2 = -> a, *b, &block do
	puts "a = #{a.inspect}"
	puts "b = #{b.inspect}"
	block.call
end
proc2.call(1, 2, 3, 4) { puts "in block2" }
