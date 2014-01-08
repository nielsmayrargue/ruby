	title = "Recettes de kiffeur"
	chapters = [
	             ['Materiel pour cuisiner', 1],
	             ['Produits de saison', 8],
	             ['Sauces et soupes', 19],
	             ['Viandes et Gibiers', 38],
	             ['Poissons, coquillages et crustaces', 157]
	           ]

	puts title.center(70)
	puts " "
	puts " "

	chapters.each do |x,y| 
			puts "#{x.rjust(0)} #{y.to_s.rjust(78-x.length)}"
	end