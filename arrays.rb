# arrays

het_arr = [1, "two", :three]
puts het_arr , het_arr[2]

arr_words = %w{ what a great day! }
puts arr_words[-2]
puts "#{arr_words.first} - #{arr_words.last}"
puts arr_words [-3, 2]

p arr_words[2..4]

p arr_words.join(',')

p arr_words.push(7)
p arr_words<<7
p arr_words.pop

p arr_words.sample
p arr_words.reverse!

arr_words[2] = 0
p arr_words

p arr_words.shift

# -------------------------------
puts #
a =[1,3,4,7,8,10]
a.each { |num| print num  }
puts #

new_arr = a.select {|num| num>4}
p new_arr
new_arr = a.select { |num| num < 10 }.reject {|num| num.even?}
p new_arr

new_arr = a.map { |x| x*3  }
p new_arr