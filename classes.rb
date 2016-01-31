class Person
	def initialize (name, age) # constructor
		# these are private need to creat method to access
		@name = name
		@age = age
	end

	def get_info
		@additional_info = "Interesting"
		"Name: #{@name}, age:#{@age}"
	end

	def name= (new_name) # setter
		@name = new_name
	end

	def name #getter
		@name
	end
end

class DifPerson
	attr_accessor :name, :age #getters and setters
end
person1 = Person.new("Joe", 14)
p person1.instance_variables
puts person1.get_info 
p person1.instance_variables
p person1.name = "mike"
p person1.name
p person1.get_info

person2 = DifPerson.new
p person2.name
person2.name = 'mike'
person2.age = 15
p person2.name

#------------------------------------

class Person
	attr_reader :age # read access
	attr_accessor :name #read/write access

	def initialize (name, ageVar) # construtor
		@name = name
		self.age = ageVar #self is used to call age= method below
	end
	def age= (new_age)
		@age ||=5 #default -> pipes like or func returns left if true otherwise returns right
		@age = new_age unless new_age > 120
	end
end

person1 = Person.new("kim", 130)
p "my age is #{person1.age}"
person1.age = 130
p person1.age
person1.age = 111
p person1.age
p "my age is #{person1.age}"
#------------------------------------
# self outside of medtoh refers to the class

class MathFunctions
	def self.double(var) #1. using self
		times_called; var * 2;
	end
	class <<self #2. usig <<self
		def times_called
			@@times_called ||=0; @@times_called+=1
		end
	end
end
def MathFunctions.triple(var)# 3. outside of class
	times_called; var * 3
end

#not instance created
puts MathFunctions.double 5
puts MathFunctions.triple(3)
p MathFunctions.times_called


#------------------------------------
# Inheritance

class Dog
	def to_s
		"dog"
	end
	def bark
		"barks loudly"
	end
end
class SmallDog < Dog # < inheritance
	def bark # override
		"barks quietly"
	end
end

dog = Dog.new 
Small_dog = SmallDog.new 
puts "\n#{dog}1 #{dog.bark}"
p "#{Small_dog}2 #{Small_dog.bark}"

#------------------------------------
# modulues like classes but cannot be instantiated
# used for namespaces
module Sports
	class Match
		attr_accessor :score
	end
end

module Patterns
	class Match
		attr_accessor :complete
	end
end

match1 = Sports::Match.new 
match1.score = 45; puts match1.score

match2 = Patterns::Match.new 
match2.complete = true; p match2.complete

#------------------------------------
puts "\n\n"
#modules as mixin
module SayMyName
	attr_accessor :name
	def print_name
		puts "name: #{@name}"
	end
end

class Person_
	include SayMyName
end

class Company
	include SayMyName
end

company = Company.new
company.name = 'google'
company.print_name


per = Person_.new 
per.name ="Joe"
per.print_name

#------------------------------------
puts "\n\n"


