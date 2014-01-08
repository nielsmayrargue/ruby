def old_roman_numeral(integer)
conversion = [ 
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
	result << conversion[i][0]*(r / conversion[i][1])
	r = (r % conversion[i][1])
end

puts result

end

def new_roman_numeral(integer)
conversion = [ 
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
	result << conversion[i][0]*(r / conversion[i][1])
	r = (r % conversion[i][1])
end

puts result

end

puts "My nice roman numeral tests" 
# Write a nice testing script herebelow !
puts 'write an arabic number'
integer = gets.chomp.to_i
puts "#{old_roman_numeral(integer)} est le resultat en ancien"
puts "#{new_roman_numeral(integer)} est le resultat en nouveau"
