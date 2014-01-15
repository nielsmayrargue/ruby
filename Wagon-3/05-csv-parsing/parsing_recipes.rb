# Main function : run the whole program 
def cookbook(csv_file)

  require 'csv'

  recipe_dictionary = {}

# The CSV file is converted into a hash in order to easily access every information
  CSV.foreach(csv_file) do |row|
     
    if recipe_dictionary[row[1]] == nil 
    	recipe_dictionary[row[1]] = {} 
    end

    recipe_dictionary[row[1]][row[0]] = {}
    recipe_dictionary[row[1]][row[0]]["prep"] = row[2]
    recipe_dictionary[row[1]][row[0]]["cook"] = row[4]
    # The difficulty of each recipe is valuated according to a defined range
    if row[3].to_i > 100
     recipe_dictionary[row[1]][row[0]]["difficulty"] = "difficile"
    elsif row[3].to_i < 100 && row[3].to_i > 60
     recipe_dictionary[row[1]][row[0]]["difficulty"] = "moyen"
    else
    recipe_dictionary[row[1]][row[0]]["difficulty"] = "facile"
    end

  end
 
  puts "We have recipes for :"
  recipe_dictionary.keys.each { |x| puts "-#{x}" } 
 
  puts "Which category are you interested in ?"

  type = gets.chomp
  
  puts "\n" + "Here are the recipes of the category :" + "\n"
  recipe_dictionary[type].keys.each { |x| puts "-#{x}" }

  puts " "
  puts "\n" + "Now which recipe ?"

  recipe = gets.chomp

  puts " "
  puts "\n" + "recipe"
  puts "************************************"
  puts "difficulty : #{recipe_dictionary[type][recipe]["difficulty"]}"
  puts "preparation  : #{recipe_dictionary[type][recipe]["prep"]}min"
  puts "cooking  : #{recipe_dictionary[type][recipe]["cook"]}h"

end

cookbook("recipes.csv")

