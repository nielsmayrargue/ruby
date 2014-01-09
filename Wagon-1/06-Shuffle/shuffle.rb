def shuffle( array )

shuffled_array = []

	until shuffled_array.length == array.length
		x = array[ rand(0..(array.length - 1)) ]
		if shuffled_array.include?(x)
			next
		else shuffled_array << x
		end
	end

return shuffled_array

end

def shuffle_1_line( array )

	array_shuffled = array.sample(array.length)

end

def shuffle_1_line_bis( array )

array.sort_by { |x| rand(0..(array.length - 1)) }

end
 
sorted_array = (1..10).to_a
 
# Testing your shuffle algorithm
p shuffle(sorted_array) != shuffle(sorted_array) # => true
p shuffle_1_line(sorted_array) != shuffle_1_line(sorted_array) # => true
p shuffle_1_line_bis(sorted_array) != shuffle_1_line_bis(sorted_array) # => true