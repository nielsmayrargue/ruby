# The objective is to create a function that computes the sum of the integers from a min value to a max value

def sum(min,max)
	sum = 0
  while min <= max
  	sum += min
  	min += 1
  end
  sum 
end


def sum2(min,max)
		sum_bis = 0
	for i in min..max
		sum_bis += i
	end
	sum_bis
end

# Testing your code

min = 1
max = 100
sum = sum(1,100)
puts sum
puts sum == 5050 # => true

min = 1
max = 100
sum_bis = sum2(1,100)
puts sum_bis
puts sum_bis == 5050 # => true