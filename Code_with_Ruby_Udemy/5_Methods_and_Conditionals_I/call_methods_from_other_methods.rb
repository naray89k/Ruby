#! /usr/bin/env ruby


def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def multiply(a, b)
  return a * b
end

def calculator(a, b, operation = "add")
  if operation == "add"
    "The Result of Addition is #{add(a, b)}"
  elsif operation == "subtract"
    "The Result of Subtraction is #{subtract(a, b)}"
  elsif operation == "multiply"
    "The Result of Multiplication is #{multiply(a, b)}"
  end
end


number_1 = 100
number_2 = 90

p calculator(number_1, number_2)
p calculator(number_1, number_2, "subtract")
p calculator(number_1, number_2, "multiply")
