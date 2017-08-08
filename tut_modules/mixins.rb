module Greetings
  def hello
    puts "Hello!"
  end
 
  def bonjour
    puts "Bonjour!"
  end
 
  def hola
    puts "Hola!"
  end
end

class User
    # extend Greetings 
	# To add Module methods as Class Methods, instead of using include you would use extend:
	include Greetings
end

philip = User.new
philip.hola

# But if you try to call the methods as Class Methods, you will get an error:
# User.hola

