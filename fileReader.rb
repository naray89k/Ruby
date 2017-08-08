f = File.open("testfile.txt")
f.each do |line|
	puts "The line is: #{line}"
end
f.close


# Sometimes you want to keep track of how many times you’ve been through the block. The
# with_index method is your friend. It is added as an additional method call after an iterator,
# and adds a sequence number to each value returned by that iterator. The original value and
# that sequence number are then passed to the block:

f = File.open("testfile.txt")
f.each.with_index do |line,index|
	puts "The line #{index} is: #{line}"
end
f.close
