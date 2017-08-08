def words_from_string(string)
	string.downcase.scan(/[\w']+/)
end

def count_frequency(word_list)
	counts = Hash.new(0)
	for word in word_list
		counts[word] += 1
	end
	puts "#{counts.class}"
	counts
end
str = "Matsumoto released the first version of the Ruby programming language on 21 December 1995. He still leads the development of the language's reference implementation, MRI (for Matz's Ruby Interpreter)"
wordsList = words_from_string(str)
wordCountHash = count_frequency(wordsList)
puts "#{wordCountHash.class}"
sorted = wordCountHash.sort_by{|word,count|count}
puts "#{sorted.class}"
top_five = sorted.last(5)
puts "#{top_five.class}"
puts "#{top_five.inspect}"

for i in 0...5 # (this is ugly code--read on
	word = top_five[i][0] # for a better version)
	count = top_five[i][1]
	puts "#{word}: #{count}"
	puts i
end

#wordCountHash.each do |word,count|
#	puts "#{word} ==> #{count}"
#end