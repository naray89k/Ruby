a = [ 1, 'cat', 3.14 ] # array with three elements
puts "The array is now #{a.inspect}"
puts "The first element is #{a[0]}"
# set the third element
a[2] = nil
puts "The array is now #{a.inspect}"

# nil is an object, just like any other, that happens to represent nothing. ***

#	Sometimes creating arrays of words can be a pain, what with all the quotes and commas.
#	Fortunately, Ruby has a shortcut; %w does just what we want:
a = [ 'ant', 'bee', 'cat', 'dog', 'elk' ]
a[0] # => "ant"
a[3] # => "dog"
# this is the same:
a = %w{ ant bee cat dog elk }
a[0] # => "ant"
a[3] # => "dog"
puts "The array is now #{a.inspect}"

b = [1,2,3,4,5,6,7,8]
c = b[-3,2]
puts "#{c.inspect}"