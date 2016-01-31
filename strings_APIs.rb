#strings and APIs
single_quote = 'ice cream \n followed by it\'s  PARTY'
double_quote = "ice cream \n followed by it\'s a party"

puts single_quote
puts double_quote


def multiply one, two
	# interpolation only in doube quotes
	"\n\n#{one} multiplied by #{two} equals #{one * two}"
end

puts multiply(5,3)

# strings ending with ! modify the existing strings

puts %Q{\n\nmultiply
	line 
	string}

my_name = " seth"
puts my_name.lstrip.capitalize
p my_name
my_name.lstrip!
my_name[0] = 'Y'
p my_name

cur_weather = %Q{its probably cold
	f*ing cold}


cur_weather.lines do |line|
	line.sub! 'cold', 'hot'
	puts "#{line.strip}"
end

my_name2 =  :SETH #symbol
puts my_name2
puts my_name2.downcase!
puts my_name2