#! /usr/bin/ruby
a = [ 1, 'cat', 3.14 ] # array with three elements
puts "The first element is #{a[0]}"
# set the third element
a[2] = nil
puts "The array is now #{a.inspect}"
puts "The array has #{a.length} Elements"

# produces:
# The first element is 1
# The array is now [1, "cat", nil]


# =============================


# Sometimes creating arrays of words can be a pain, what with all the quotes and commas.
# Fortunately, Ruby has a shortcut; %w does just what we want:
a = [ 'ant', 'bee', 'cat', 'dog', 'elk' ]
a[0] # => "ant"
a[3] # => "dog"
# this is the same:
a = %w{ ant bee cat dog elk }
a[0] # => "ant"
a[3] # => "dog"


# =============================


# HASHES
# Ruby hashes are similar to arrays. A hash literal uses braces rather than square brackets.
# The literal must supply two objects for every entry: one for the key, the other for the value.
# The key and value are normally separated by =>.
inst_section = {
    'cello' => 'string',
    'clarinet' => 'woodwind',
    'drum' => 'percussion',
    'oboe' => 'woodwind',
    'trumpet' => 'brass',
    'violin' => 'string'
}
p inst_section['oboe']
p inst_section['cello']
p inst_section['bassoon']

# produces:
# "woodwind"
# "string"
# nil
