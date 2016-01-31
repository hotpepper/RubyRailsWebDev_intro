File.open("test1.txt", "w") do |file|
	file.puts "one line"
	file.puts "another"
end
# files get auto closed at end of block