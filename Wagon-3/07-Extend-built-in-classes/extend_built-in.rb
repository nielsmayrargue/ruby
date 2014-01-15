# Method that leads to factorial outside of a class
def factorial(an_integer)
	result = 1
	(1..an_integer).each { |x| result*= x }
	return result
end

# Adding the factorial method to the Fixnum class
class Fixnum
	def factorial
    result = 1
    (1..self).each { |x| result*= x }
    return result
  end
end

#Adding a shuffle method to the Array class

class Array
  def shuffle_newnew(n)
    self[0,(n+1)].shuffle
  end
end

#test
puts factorial(6)
puts 6.factorial
array = [1,"wagon","irma",3,"robert"]
print array.shuffle_newnew(3)