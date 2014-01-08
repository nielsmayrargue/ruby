def old_roman_numeral(integer)
conversion_old = [ 
	["M",1000],
	["D",500],
	["C",100],
	["L",50],
	["X",10],
	["V",5],
	["I",1]
]

result = ""
r = integer # reste des divisions euclidiennes successives

for i in 0..6
	result << conversion_old[i][0]*(r / conversion_old[i][1])
	r = (integer % conversion_old[i][1])
end

puts result

end

def new_roman_numeral(integer)
conversion_new = [ 
	["M",1000],
	["CM",900],
	["D",500],
	["CD",400],
	["C",100],
	["XC",90],
	["L",50],
	["XL",40],
	["X",10],
	["IX",9],
	["V",5],
	["IV",4],
	["I",1]
]

result = ""
r = integer # reste des divisions euclidiennes successives

for i in 0..12
	result << conversion_new[i][0]*(r / conversion_new[i][1])
	r = (integer % conversion_new[i][1])
end

puts result

end

puts "My nice roman numeral tests" 
# Write a nice testing script herebelow !
puts 'write an arabic number'
integer = gets.chomp.to_i
puts "voici le resultat en ancien : #{old_roman_numeral(integer)}"
puts "voici le resultat en nouveau : #{new_roman_numeral(integer)}"
