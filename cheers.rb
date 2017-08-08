def say_goodnight(name)
	"Good night, #{name.capitalize}"
end


#def say_goodnight(name)
#	result = "Good night, #{name.capitalize}"
	#result = "Good night, " + name
#	return result
#end

# The value returned by a Ruby method is the value of the last expression evaluated, so we can get rid of the temporary variable and
# the return statement altogether. This is idiomatic Ruby

# Time for bed...
puts say_goodnight("John-Boy")
puts say_goodnight("Mary-Ellen")