

# .. includes both ends (1..10) includes 1 an 10
# ... exclusive (1...10) includes 1 excludes 10
some_range = 1..3
p some_range.max 
p some_range.include? 2
p (1...10) === 5.3 # true
p ('a'...'r') === 'r' # false 

p ('k'..'z').to_a.sample(2)

age = 55
case age
	when 0..12 then p "still a baby"
	when 13..99 then puts "dumb teenager"
	else puts "too old"
end