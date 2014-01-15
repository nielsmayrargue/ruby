require 'csv' # better here

# Main function : run the whole program 
def cookbook(csv_file)

  recipe_dictionary = {}

# The CSV file is converted into a hash in order to easily access every information
  CSV.foreach(csv_file) do |row|
# We could have sorted the rows before manipulating them. Also, we could have renamed the elements of each row and changed it to sym.
    if recipe_dictionary[row[1]] == nil 
    	recipe_dictionary[row[1]] = {} 
    end

    recipe_dictionary[row[1]][row[0]] = {}
    recipe_dictionary[row[1]][row[0]][:prep] = row[2]
    recipe_dictionary[row[1]][row[0]][:cook] = row[4]
    # The difficulty of each recipe is valuated according to a defined range
    if row[3].to_i > 100
     recipe_dictionary[row[1]][row[0]][:difficulty] = "difficile"
    elsif row[3].to_i < 100 && row[3].to_i > 60
     recipe_dictionary[row[1]][row[0]][:difficulty] = "moyen"
    else
    recipe_dictionary[row[1]][row[0]][:difficulty] = "facile"
    end

  end
 
  category_list = recipe_dictionary.keys
 
  puts "We have recipes for :"
  category_list.each do |category|
    puts "- #{category}"
  end
 
  puts "Which category are you interested in ?"

  category = gets.chomp
  recipe_list = recipe_dictionary[category].keys
  
  puts "\nHere are the recipes of the category :\n"
  recipe_list.each do |recipe|
    puts "- #{recipe}"
  end

  puts "\n\nNow which recipe ?"

  recipe_name = gets.chomp
  recipe_info = recipe_dictionary[category][recipe_name]

  puts "\n\nrecipe"
  puts "************************************"
  puts "difficulty : #{recipe_info[:difficulty]}"
  puts "preparation  : #{recipe_info[:prep]}min"
  puts "cooking  : #{recipe_info[:cook]}h"

end

cookbook("recipes.csv")

