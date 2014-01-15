def factorial(an_integer)
	result = 1
	(1..an_integer).each { |x| result*= x }
	return result
end

class Fixnum
	def factorial
    result = 1
    (1..self).each { |x| result*= x }
    return result
  end
end

#test
puts factorial(6)
puts 6.factorial