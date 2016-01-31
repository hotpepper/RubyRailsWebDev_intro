
editor_props = {"font" => "Arial", "size" => 12, "color" => "red"}

puts editor_props.length
puts editor_props["font"]

editor_props["background"] = "blue"
editor_props.each_pair do |key, value|
	puts "key: #{key} value #{value}"
end


word_frequency = Hash.new(0) # Hash.new(value) sets default value to return if key not found

sentence = "chick chicka boom boom"
sentence.split.each do |word|
	word_frequency[word.downcase] +=1
end
p word_frequency
p word_frequency['test']
