def calories_in_hash(*meal)
  #meal = meal[0] if meal[0].is_a?(Array) and meal.length == 1
  meal = meal.flatten

  conversion_hash = {
    "Cheese_Burger" => 290,
    "Big_Mac" => 300,
    "Mc_Bacon" => 300,
    "Royal_Cheese" => 130,
    "French_fries" => 130,
    "Potatoes" => 130,
    "Coca" => 160,
    "Sprite" => 1700,
    "Happy_meal" => ["Cheese_Burger", "French_fries", "Coca"],
    "Happy_Papillard" => ["Mc_Bacon", "Potatoes", "Sprite"]
  }

  calories = 0

  meal.each do |ingredient| 
    value = conversion_hash[ingredient]
    if value.is_a?(Array)
      #value.each { |sous_ingredient| calories += conversion_hash[sous_ingredient]}
      calories += calories_in_hash(value)
    else 
      calories += value 
    end 
  end

  return calories

end
  #test

  puts calories_in_hash([["Sprite"],"Big_Mac"], "Happy_Papillard")