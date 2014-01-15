def cookbook(csv_file)

  require 'csv'

  mega_hash = {}

  ordered_row = [1,0,3,2,4]

  CSV.foreach(csv_file) do |row|

    
    #ordered_row.each { |x| row << row[x] }

    
    #row.delete_at(0)
    #row.delete_at(1)
    #row.delete_at(2)
    #row.delete_at(3)
    #row.delete_at(4)
    
    if mega_hash[row[1]] == nil 
    	mega_hash[row[1]] = {} 
    end

    mega_hash[row[1]][row[0]] = {}
    mega_hash[row[1]][row[0]]["difficulty"] = row[3]
    mega_hash[row[1]][row[0]]["prep"] = row[2]
    mega_hash[row[1]][row[0]]["cook"] = row[4]

  end

  def affichage(array)
    array.each { |x| puts x }
  end
  
  puts "We have recipes for :"
  puts "- Entree"
  puts "- Plat Principal"
  puts "- Dessert"
  puts "- Sauce"

  puts "Which category are you interested in ?"

  type = gets.chomp

  puts "Here are the recipes of the category : #{affichage(mega_hash[type].keys)}"

  puts "Now which recipe ?"

  recipe = gets.chomp

  puts recipe
  puts "************************************"
  puts "difficulty : #{mega_hash[type][recipe]["difficulty"]}"
  puts "preparation  : #{mega_hash[type][recipe]["prep"]}min"
  puts "cooking  : #{mega_hash[type][recipe]["cook"]}h"

end

cookbook("recipes.csv")

