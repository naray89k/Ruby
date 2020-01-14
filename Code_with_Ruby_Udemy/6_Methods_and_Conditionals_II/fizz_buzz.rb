#! /usr/bin/env ruby

def fizzbuzz(number)
  # if the number is divisible by 3, output Fizz
  # if the number is divisible by 5, output Buzz
  # if the number is divisible by BOTH 3 and 5, output FizzBuzz
  i = 1
  while i <= number
    if (i % 15 == 0)
      p "#{i} --> FizzBuzz"
    elsif (i % 3 == 0)
      p "#{i} --> Fizz"
    elsif (i % 5 == 0)
      p "#{i} --> Buzz"
    end
    i += 1
  end
end

fizzbuzz(25)

#
# if (i % 3 == 0) && (i % 5 == 0)
# but
# if (i % 15 == 0)
# is the optimized way
