#! /usr/bin/env ruby

expression = "I am outside of function"

def introduce_myself
    expression = "I am inside function"
    puts expression
end

introduce_myself
puts expression
