class BookInStock
	#attr_reader :isbn, :price
	attr_accessor :isbn, :price
	# 'attr_reader' creates reader(getter) methods for the instance variables passed.
	# 'attr_accessor' creates reader(getter) and writer(setter) methods for the instance variables passed.
	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)
	end
	
	def to_s
		"ISBN: #{@isbn}, price: #{@price}"
	end
	
	#def isbn
	#	@isbn
	#end
	
	#def price
	#	@price
	#end
	
	# To change the value of Instance Variable, creating a Ruby method whose name ends with an equals sign. 
	# These methods can be used as the target of assignments: ( Just like Setters in Java }
	#def price=(new_price)
	#	@price = new_price
	#end
	
	def price_in_cents
		Integer(price*100 + 0.5)
	end
	
	def price_in_cents=(cents)
		@price = cents / 100.0
	end
	# Here we’ve used attribute methods to create a virtual instance variable. To the outside world,
	# 'price_in_cents' seems to be an attribute like any other. Internally, though, it has no corresponding
	# instance variable.
end

#	b1 = BookInStock.new("ISBN-000001", 3)
#	puts b1
#	b2 = BookInStock.new("ISBN-000002", 3.14)
#	puts b2
#	b3 = BookInStock.new("ISBN-000003", "5.67")
#	puts b3
#	book = BookInStock.new("ISBN-000004", 12.34)
#	puts "ISBN = #{book.isbn}"
#	puts "Price = #{book.price}"
#	book.price = book.price * 1.10 	#updated price
#	puts "New Price = #{book.price}"

book = BookInStock.new("ISBN-000004", 33.80)
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
book.price_in_cents = 4321
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
