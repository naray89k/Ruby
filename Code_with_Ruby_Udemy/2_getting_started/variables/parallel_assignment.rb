#! /usr/bin/env ruby

# parallel assignment

# a = 10
# b = 20
# c = 30
a, b, c = 10, 20, 30
p "Before Swapping"
p a, b, c


a, b, c = c, a, b
p "After Swapping"
p a, b, c
