def shuffle_word(a_word)
  # Ruby fonction to play to "Des chiffres et des lettres.."
  
  #cap_word = a_word.upcase
  #chars_enum = cap_word.chars
  #array = chars_enum.to_a
  #shuffle_array = array.shuffle
  
	a_word.upcase.chars.to_a.shuffle

  #return shuffle_array
  
end


def quote_prime_numbers(n)
  # find all primes
  primes = (1..n).select do |i|
  	# a number is prime if it has no euclidian dividor between 1+1 and itself-1
  	dividors = (2..i-1).select {|k| i % k == 0 }
  	dividors.count == 0
  end

def quote_prime_numbers(n)
# We are looking for all the prime numbers of this list 
#prime number = a number that has no euclidian dividors between 2 and (itself minus one)
range = (1..n) #numbers to check
primes = range.select do |i| 
	dividors.select { |k| i / (2..i-1) == 0 } # division de chaque nombre par ses diviseurs
	i % 2 == 0  #sélection des nombres n'ayant pas de diviseur
end

primes = checked.count == 0
primes.map{ |prime_num| "#{prime_num} is prime"}

end




puts shuffle_word("nabuchodonosor")
puts quote_prime_numbers(30)