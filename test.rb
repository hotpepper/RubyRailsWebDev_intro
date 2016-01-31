a = 5 
if a ==3
	 puts "a is 3"
elsif a==5
	puts "a is 5"
else
	puts "a is not 3 nor 5"
end
# ----------------------------
unless a==6
	puts "a is not 6"
end

# ----------------------------
puts a+7
a ='a'
puts a*4
# ----------------------------
a=10
while a>9
	puts a
	a-=1
end
# ----------------------------
a=9
until a>=10
	puts a
	a+=1
end
# ----------------------------
# mdifyer form
a=5
b=0
puts "one liner" if a==5 and b==0
# ----------------------------
times_2 = 2
times_2 *= 2 while times_2 <100
puts times_2

if Integer === 21 # superset of ==, but seems like its less specific
	puts "21 is an int"
end


# parenthasies are optional 
# retun is optional
def add one, two
	one + two
end

def divide (one, two)
	return "i dont think so" if two == 0
	one/two
end

puts add(2,2)
puts divide 2,0
divide(12, 4)

# methods that end with a question mark are call predicate methods and usually return boolean
def can_divide_by?(number)
	return false if number.zero?
	return true
end

puts can_divide_by? 3
puts can_divide_by? 0


# ternary operator
# condition ? true : false
def factorial (n)
	n==0? 1: n * factorial(n-1)
end

def factorial_with_default n=5
	n==0? 1: n * factorial_with_default(n-1)
end


puts factorial 5
puts factorial_with_default
puts factorial_with_default 3


# splat (*prefix)
def max_n(one_param, *numbers, another)
	# variable length parameters passed in become array
	numbers.max
end

puts max_n("sothing", 7, 32,-4,"more")


def two_times_implicit
	return "no block" unless block_given?
	yield
	yield
end

puts two_times_implicit { print " hello"}
puts two_times_implicit

def two_times_explicit (&i_am_a_block)
	return "no block" if i_am_a_block.nil?
	i_am_a_block.call
	i_am_a_block.call
end

puts two_times_explicit { print " hello"}
puts two_times_explicit


File.foreach('test.txt') do |line|
	puts line
	p line
	p line.chomp
	p line.split
end

begin
	File.foreach('does_not_exist.txt') do |line|
		p line.chomp
	end
rescue Exception => e 
	puts e.message
	p "lests pretend this didnt happen..."
end
