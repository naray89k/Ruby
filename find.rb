#class Array
#	def find
#		each do |value|
#			return value if yield(value)
#		end
#		nil
#	end
#end

result = [1, 3, 5, 7, 9].find {|v| v*v > 30 } # => 7
puts result
result = [1, 3, 5, 7, 9].find_all{|v| v*v > 30 } # => 7
puts "#{result.class}"
puts "#{result.inspect}"