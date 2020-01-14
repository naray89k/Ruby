#! /usr/bin/env ruby

p 10 != 10
p 10 != 5

a, b, c = 10, 5, 10

p a != c
p a != b
p b != c

# comparing objects of different types returns false
p "5" != 5

# some exceptions when it comes to comparing
# floating point and fixnum,
# they will be taken care under the hood.
p 5 != 5.0
p 5.class
p 5.0.class

p 5.to_f != 5.0
