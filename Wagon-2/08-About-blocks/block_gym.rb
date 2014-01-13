# Recoding inject iterator

def inject(array, initial_value)
  array.each do |element|
  initial_value = yield(initial_value, element)
  	end
  	return initial_value
end

puts inject(1..100, 0) { |an_initial_value, an_element| an_element + an_initial_value } == 5050

# Block timer

def timer_for
start = Time.now
yield
puts Time.now - start
end

timer_for do 
  (1..100).each { |i| (1..100000).to_a.shuffle.sort }
end

# Should return around 2-3 seconds