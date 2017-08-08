#! /usr/bin/ruby

def Integer.all
	Enumerator.new do |yielder, n: 0|
		loop { yielder.yield(n += 1) }
	#end
	end.lazy
end
#p Integer.all.first(10)

#p Integer.all.select {|i| (i % 3).zero? }.first(10)

def palindrome?(n)
	n = n.to_s
	n == n.reverse
end

prime_numbers = Enumerator.new do |yielder, number: 1|
	loop do 
		if number == 1 or number == 2 or number == 3
			yielder.yield number
		else 
			flag = 0
			checker = 2
			limit = Math.sqrt(number).floor
			while checker <= limit
				if number % checker == 0
					flag = 1
					break
				else
					checker += 1
				end
			end
			yielder.yield number if flag == 0
		end
		number += 1
	end
end

p 9.times{print prime_numbers.next, " "}
p prime_numbers.first(10)






#p Integer.all.select { |i| (i % 3).zero? }.select { |i| palindrome?(i) }.first(10)
#p Integer.all.select { |i| (i % 3).zero? }.select { |i| (i%2).zero? }.first(10)

# Remember that our lazy filter methods simply return new Enumerator objects? That means we can split up the previous code:
#multiple_of_three = Integer.all.select { |i| (i % 3).zero? }
#p multiple_of_three.first(10)
#m3_palindrome = multiple_of_three.select { |i| palindrome?(i) }
#p m3_palindrome.first(10)

# You could also code up the various predicates as free-standing procs, if you feel it aids readability or reusablility.
multiple_of_three = -> n { (n % 3).zero? }
palindrome = -> n { n = n.to_s; n == n.reverse }
#p multiple_of_three.first(10)

#p Integer.all.select(&multiple_of_three).select(&palindrome).first(10)
