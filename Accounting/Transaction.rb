require_relative 'Account'
class Transaction
	def initialize(account_a, account_b)
		@account_a = account_a
		@account_b = account_b
	end
	
	private
		def debit(account, amount)
			account.balance -= amount
		end
		
		def credit(account, amount)
			account.balance += amount
		end
	public
	#...
		def transfer(amount)
			debit(@account_a, amount)
			credit(@account_b, amount)
		end
#...
end

savings = Account.new(150)
checking = Account.new(200)

trans = Transaction.new(checking, savings)
trans.transfer(50)

puts "ACCOUNT BALANCE DETAILS"
puts "Savings Account Balance=#{savings.balance}"
puts "Checking Account Balance=#{checking.balance}"

puts "DETAILS OF SAVINGS OBJECT"
puts "\'savings\' is an object of #{savings.class} Class"
puts "Object ID of the \'savings\' Object is #{savings.object_id}"
puts "Value of the \'savings\' is #{savings}\n"

puts "DETAILS OF TRANSACTION OBJECT"
puts "\'trans\' is an object of #{trans.class} Class"
puts "Object ID of the \'trans\' Object is #{trans.object_id}"
puts "Value of the \'trans\' is #{trans}\n"