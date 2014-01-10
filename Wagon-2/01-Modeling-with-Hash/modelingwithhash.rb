def calories_in(*meal)
	$conversion = [
		["Cheese_Burger", 290],
		["Big_Mac", 300],
		["Mc_Bacon", 300],
		["Royal_Cheese", 130],
		["French_fries", 130],
		["Potatoes", 130],
		["Coca", 160],
		["Sprite", 170],
	]
  
  calories = 0
  meal.each do |x|
    $conversion.each do |y|
      if x == y[0]
  		  calories += y[1]
  		end
  	end
  end

 puts calories
end 

def calories_in_hash(*meal)
  $conversion_hash = 
  {
    "Cheese_Burger" => 290,
    "Big_Mac" => 300,
    "Mc_Bacon" => 300,
    "Royal_Cheese" => 130,
    "French_fries" => 130,
    "Potatoes" => 130,
    "Coca" => 160,
    "Sprite" => 170
  }

calories = 0
meal.each do |x| 
calories += $conversion_hash[x]
end

puts calories

end

#test
calories_in("Cheese_Burger", "Coca", "French_fries", "Sprite")

#update with filet_of_fish
$conversion << ["filet_of_fish", 100000]
puts $conversion[8]

#Call hash
calories_in_hash("Cheese_Burger", "Coca")

