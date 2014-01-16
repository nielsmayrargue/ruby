require 'csv' # better here

DIFFICULTY = { '1'=>'Easy', '2'=>'Medium', '3'=>'Hard' }

def csv_to_hash(csv_file)  # separate the creation of the hash in a method
  hash = Hash.new { |hash, key| hash[key] = {}  }
  CSV.foreach(csv_file) do |row|
    hash[row[1]][row[0]] = { name: row[0], prep: row[2], cook: row[3], difficulty: row[4] }
  end
  hash
end

cookbook = csv_to_hash('recipes.csv')
category_list = cookbook.keys

puts "We have recipes for :"
category_list.each do |category|
  puts "- #{category}"
end

puts "Which category are you interested in ?"

category = gets.chomp
recipe_list = cookbook[category].values

puts "\nHere are the recipes of the category :\n"
recipe_list.each do |recipe|
  puts "- #{recipe[:name]}"
end

puts "\n\nNow which recipe ?"

recipe_name = gets.chomp
recipe_info = cookbook[category][recipe_name]

puts "\n\nRecipe"
puts "************************************"
puts "difficulty : #{DIFFICULTY[recipe_info[:difficulty]]}"
puts "preparation  : #{recipe_info[:prep]}min"
puts "cooking  : #{recipe_info[:cook]}min"

