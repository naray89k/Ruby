#!  /usr/bin/ruby

# Form 1: recommended for single line blocks
[1, 2, 3].each { |num| puts num }
# -------------- block  block
# -------------- args   body

# Form 2: recommended for multi-line blocks
[1, 2, 3].each do |num|
	puts num
end


# So how does a method work with a block, and how can it know if a block is available? 
# Well, to answer the first question, you need to use the yield keyword. 
# When you use yield, the code inside the block will be executed.
def print_once
    yield
end
print_once { puts "Block is being run" }


# Yield can be used multiple times, 
# which will result in the block being executed as many times as you call yield.
def print_twice
    yield
    yield
end
print_twice { puts "Hello" }


# It is also possible to use yield with any number of arguments. 
# These arguments can then be used by the block.
def one_two_three
    yield 1
    yield 2
    yield 3
end
one_two_three { |number| puts number * 10 }
# 10, 20, 30


# Blocks can also be explicit instead of implicit. 
# What this means is that you can name the block and pass it around if you need to.
# Here is an example:
def explicit_block(&block)
    block.call # Same as yield
end
explicit_block { puts "Explicit block called" }


# If you try to yield without a block you will get a no block given (yield) error. 
# You can check if a block has been passed in with the block_given? method.
def do_something_with_block
    return "No block given" unless block_given?
    yield
end


# Lambdas vs Procs
# Procs & lambdas are a very similar concept, one of the differences is how you create them.
# "n fact, there is no dedicated Lambda class. A lambda is just a special Proc object. 
# If you take a look at the instance methods from Proc, you will notice there is a lambda? method"
# The syntax for defining a Ruby lambda looks like this:
say_something = -> { puts "This is a lambda" }
# 'You can also use the word lambda instead of ->. 


# Defining a lambda won’t run the code inside it, you need to use the call method for that.
# Example:
say_something = -> { puts "This is a lambda" }
say_something.call
#"This is a lambda"


# There are other ways to call a lambda, it’s good to know they exist, 
# however, I recommend sticking with call for clarity.
my_lambda = -> { puts "Lambda called" }
my_lambda.call
my_lambda.()
my_lambda[]
my_lambda.===


# Lambdas can also take arguments, here is an example:
times_two = ->(x) { puts x * 2 }
times_two.call(10)
# 20


# If you pass the wrong number of arguments to a lambda, it will raise an exception, 
# just like a regular method. But that’s not the case with procs, as demonstrated in the following example.
t = Proc.new { |x,y| puts "I don't care about arguments!" }
t.call
# "I don't care about arguments!"
