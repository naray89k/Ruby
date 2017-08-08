#! /usr/bin/ruby

# Blocks
# 1. Single line blocks --> use braces
# 2. Multiline Blocks   --> use do-end 

# All we can do with a block is associate it with a call to a method. we do this by putting the
# start of the block at the end of the source line containing the method call
# For Example:

# Single Line Block:
puts "EXAMPLE 1"
def call_block
    puts "Start of method"
    yield
    yield
    puts "End of method"
end
call_block { puts "In the block" }


# BLOCKS WITH PARAMETERS:
# -----------------------
# we can provide arguments to the call to yield, and they will be passed to the block. Within
# the block, we list the names of the parameters to receive these arguments between vertical
# bars (|params...|). The following example shows a method calling its associated block twice,
# passing the block two arguments each time:
# For Example:
puts
puts
puts "EXAMPLE 2"
def who_says_what
    yield("Dave", "hello")
    yield("Andy", "goodbye")
end
who_says_what {|person, phrase| puts "#{person} says #{phrase}"}
# produces:
# Dave says hello
# Andy says goodbye



# BLOCKS USAGE:
# Code blocks are used throughout the Ruby library to implement iterators, which are methods
# that return successive elements from some kind of collection, such as an array:
puts
puts
puts "EXAMPLE 3"
animals = %w( ant bee cat dog ) # create an array
animals.each {|animal| puts animal } # iterate over the contents
# produces:
# ant
# bee
# cat
# dog


# Many of the looping constructs that are built into languages such as C and Java are simply
# method calls in Ruby, with the methods invoking the associated block zero or more times:
puts
puts
puts "EXAMPLE 4"
[ 'cat', 'dog', 'horse' ].each {|name| print name, " " }
puts
5.times { print "*" }
puts
3.upto(6) {|i| print i }
puts
('a'..'e').each {|char| print char }
puts
(5..100).each{|num| print num}
puts
# produces:
# cat dog horse 
# *****
# 3456
# abcde
