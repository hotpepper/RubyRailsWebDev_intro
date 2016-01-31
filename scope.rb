# methods and classes begin new scope
# 	outer scope does not get carried over
# use local_variables method to see which variables are in current scope

v1 = "outside"

class MyClass
	def my_method
		# p v1 Exception - no variable exists
		v1 = "inside"
		p v1
		p local_variables
	end
end

p v1 
obj = MyClass.new
obj.my_method
p local_variables
p self

puts "\n\n"

# Constants any ref with uppercase (incl classes and modules)
# diff scope rules
# inner scope can see Constants defined in outer scope
# and can override out Constants
# value remains unchanged outside

module Test
	PI = 3.14
	class Test2
		def what_is_pi
			puts PI
		end
	end
end

Test::Test2.new.what_is_pi

module MyModule
	MyConstant = 'outer Constant'
	class MyClass
		puts MyConstant #outer constant
		MyConstant = 'Inner constant'
		puts MyConstant # inner constant
	end
	puts MyConstant # outer constant
	# outer remains unchanged
end

# blocks inherit outer scope
class BankAccount
	attr_accessor :id, :amount
	def initialize(id, amount)
		@id = id
		@amount = amount
	end
end

acct1 = BankAccount.new(123, 200)
acct2 = BankAccount.new(321, 100)
acct3 = BankAccount.new(421, -100)
accts = [acct1, acct2, acct3]

total_sum = 0
accts.each do |eachAcct|
	total_sum+=eachAcct.amount
end

puts total_sum

