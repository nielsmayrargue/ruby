def group_anagrams(words)
  anagramer = {}
	words.each do |word|
    word_key = word.downcase.split("").sort
    if anagramer.has_key?(word_key)
      anagramer[word_key] << word
    else
      anagramer[word_key] = [word]
    end
  end

  return anagramer
end


# input:
puts group_anagrams( ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'] )


# output:
# =>  [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams", "scream"]]

# HINT: you can quickly tell if two words are anagrams by sorting their
# letters, keeping in mind that upper vs lowercase doesn't matter