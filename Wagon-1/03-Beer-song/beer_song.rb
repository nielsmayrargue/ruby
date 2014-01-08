def beersong(number_of_beers)
	while number_of_beers > 0
	case 
	when number_of_beers == 2
		puts '2 bottles of beer on the wall, 2 bottles of beer!'
		puts 'Take one down, pass it around, 1 bottle of beer on the wall!'
		number_of_beers -= 1
	when number_of_beers == 1
		puts '1 bottle of beer on the wall, 1 bottle of beer!'
		puts 'Take one down, pass it around, no more bottles of beer on the wall!'
		number_of_beers -= 1
	else
		puts "#{number_of_beers} bottles of beer on the wall, #{number_of_beers} bottles of beer!"
		number_of_beers -= 1
		puts "Take one down, pass it around, #{number_of_beers} bottles of beer on the wall!"
	end
end

end

beersong(ARGV[0].to_i)

# output (if called with 5 beers) :

# => 5 bottles of beer on the wall, 5 bottles of beer!
# => Take one down, pass it around, 4 bottles of beer on the wall!
# => 4 bottles of beer on the wall, 4 bottles of beer!
# => Take one down, pass it around, 3 bottles of beer on the wall!
# => 3 bottles of beer on the wall, 3 bottles of beer!
# => Take one down, pass it around, 2 bottles of beer on the wall!
# => 2 bottles of beer on the wall, 2 bottles of beer!
# => Take one down, pass it around, 1 bottle of beer on the wall!
# => 1 bottle of beer on the wall, 1 bottle of beer!
# => Take one down, pass it around, no more bottles of beer on the wall!