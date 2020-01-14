#! /usr/bin/env ruby

# Bang method is a special type of method that has a side effect.
# Bang methods usually modifies or mutates the original object
# that the method is called on.

# Bang methods conclude with an exclation sign at the end.

word = "hello"
word.capitalize
p word

word.capitalize!
p word

word.upcase!
p word

word.downcase!
p word

word.reverse!
p word

word.swapcase!
p word
