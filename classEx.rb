#! /usr/bin/ruby

# Let’s call this class BookInStock. (Remember, class names start with an uppercase letter, and
# method names normally start with a lowercase letter.)
class BookInStock
end

a_book = BookInStock.new
another_book = BookInStock.new

# After this code runs, we’d have two distinct objects, both of class BookInStock. But, besides
# that they have different identities, these two objects are otherwise the same—there’s nothing
# to distinguish one from the other. And, what’s worse, these objects actually don’t hold any
# of the information we need them to hold.
#

# Here is the updated class definition with initialize method:
# This lets us set the state of each object as it is constructed. 
# We store this state in instance variables inside the object.
class BookInStock
    attr_reader :isbn
    attr_accessor :price
    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end

    # OVER RIDDEN FUNCTION FROM SUPERCLASS
    def to_s
        "ISBN: #{@isbn}, price: #{@price}"
    end

    # GETTERS:
    #def isbn
    #    @isbn
    #end

    #def price
    #    @price
    #end

    # SETTERS:
    #def price=(new_price)
    #    @price = new_price
    #end
    
    # VIRTUAL ATTRIBUTES:
    def price_in_cents
        Integer(price*100 + 0.5)
    end

    def price_in_cents=(cents)
        @price = cents / 100.0
    end

end
b1 = BookInStock.new("isbn1", 3)
p b1
b2 = BookInStock.new("isbn2", 3.14)
p b2
b3 = BookInStock.new("isbn3", "5.67")
p b3
# Produces:
# #<BookInStock:0x007fac4910f3e0 @isbn="isbn1", @price=3.0>
# #<BookInStock:0x007fac4910f0c0 @isbn="isbn2", @price=3.14>
# #<BookInStock:0x007fac4910eda0 @isbn="isbn3", @price=5.67>

puts b1
puts b2
puts b3
# Produces:
# ISBN: isbn1, price: 3.0
# ISBN: isbn2, price: 3.14
# ISBN: isbn3, price: 5.67


# Note: 
# 1. Built-in function 'p'      --> prints the passed object's inspect result.
# 2. Built-in function 'puts'   --> prints the passing the Object with newline character at the end.
#                                   while printing any user-defined objects,it prints the parent-most class's 'to_s' funtion.
#                                   if there is 'to_s' function(over-ridden) in user-defined class, then that function will be used.
# 3. Built-in function 'print'  --> prints the passed object without newline characters
# 4. Built-in function 'printf' --> C like features to print the floating point,string, etc.
#
# p b1      <-- same as -->     puts "#{b1.inspect}"
# puts b1   <-- same as -->     puts b1.to_s

# Hint:
# There’s something going on here that’s both trivial and profound. See how the values we
# set into the instance variables @isbn and @price in the initialize method are subsequently
# available in the to_s method? That shows how instance variables work—they’re stored with
# each object and available to all the instance methods of those objects.
#
book = BookInStock.new("isbn1", 12.34)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"
# produces:
# ISBN = isbn1
# Price = 12.34

book.price = book.price * 0.75 # discount price
puts "New price = #{book.price}"
# produces:
# New price = 9.254999999999999
#
book = BookInStock.new("isbn1", 33.80)
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
book.price_in_cents = 1234
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
# produces:
# Price = 33.8
# Price in cents = 3380
# Price = 12.34
# Price in cents = 1234
#
# GETTER METHODS:
# Because writing accessor(GETTER) methods is such a common idiom, Ruby provides a convenient
# shortcut. attr_reader creates these attribute reader methods for we:
# Now. the Getters method is commented and attr_reader is added.
#
# SETTER METHODS:
# Setter Methods can be achieved by creating a Ruby method whose name ends with an equals sign.
# These methods can be used as the target of assignments:
#  ----- Now the class is added with the function.
#
# SHORTCUTS FOR ACCESSOR METHODS:
# attr_accessor --> creates the accessor functions for a class (both setter and getter)
# attr_reader   --> creates the getter functions for a class.
# attr_writer   --> creates the setter functions for a class.
#
#
# VIRTUAL ATTRIBUTES:
# These attribute-accessing methods do not have to be just simple wrappers around an object’s
# instance variables. For example, we may want to access the price as an exact number of
# cents, rather than as a floating-point number of dollars
#

