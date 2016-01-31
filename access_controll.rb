

class Car
	def initialize (speed, comfort)
		@rating = speed * comfort
	end

	# cant set rating form outside
	def rating
		@rating
	end
end

puts Car.new(4,5).rating

# ----------------------------
class MyAlgorithm
	private
		def test1
			"private"
		end
	protected
		def test2
			"protected"
		end
	public
		def public_again
			"public"
		end
end


class Another
	def test1
		"private, as declared later on"
	end
	private :test1
end


class Person
	def initialize(age)
		self.age = age # legel exception
		puts my_age 
		# puts self.my_age #illigal
	end

	private
	def my_age
		@age
	end
	def age=(age)
		@age = age
	end
end

Person.new(25)
