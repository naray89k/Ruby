#! /usr/bin/env ruby

# y is set to nil
y = nil
p y

# if a variable is set to nil and later if we use
# contional assignment operator '||=' then value to the
# right side of operator will assigned to the variable
# (only if the variable is nil).
y ||= 5
p y

y ||= 10
p y

# Another meaningful example:
greeting = "Hello"
extraction = 100
letter = greeting[extraction]
p letter
letter ||= "Not Found"
p letter
