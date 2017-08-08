class VowelFinder
	include Enumerable
	attr_accessor :string
	def initialize(string)
		@string = string
	end
	def each
		@string.scan(/[aeiou]/) {|vowel| yield vowel}
	end
end
vf = VowelFinder.new("the quick brown fox jumped")
puts vf.inject(:+) # => "euiooue"
puts vf.each
# puts " Result: "+sampStr

