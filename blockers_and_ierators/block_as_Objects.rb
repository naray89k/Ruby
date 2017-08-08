class ProcExample
	def pass_in_block(&action)
		@stored_proc = action
	end
	
	def use_proc(parameter)
		@stored_proc.call(parameter)
	end
end

eg = ProcExample.new
eg.pass_in_block { |param| puts "The parameter is #{param}" }
eg.use_proc(99)

def create_block_object(&block)
block
end
bo = create_block_object { |param| puts "You called me with #{param}" }
bo.call 99
bo.call "cat"

# In fact, this is so useful that Ruby provides not one but two built-in methods that convert a
# block to an object.8 Both lambda and Proc.new take a block and return an object of class Proc.
# The objects they return differ slightly in how they behave, but we’ll hold off talking about
# that until later Page:336
puts ""
puts "lambda sample" 
bo = lambda { |param| puts "You called me with #{param}" }
bo.call 99
bo.call "cat"