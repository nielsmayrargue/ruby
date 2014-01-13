def translator(sentence)
  sentence.split(" ").each { |word| print word_translator(word) + " " }
end

=begin
def word_translator(word)
  consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","z"]
  number_of_consonants = 0
  array_of_letters = word.split(//)
  array_of_letters.each do |letter|
    suffix = ["em","ji","oc","ic","uche","es"]
    case 
      when consonants.include?(letter) && number_of_consonants < 1
        array_of_letters.delete(letter)
        array_of_letters << letter
        array_of_letters.unshift("l")
      when consonants.include?(letter) && number_of_consonants = 1
        array_of_letters.delete(letter)
        array_of_letters << letter
      else 
        array_of_letters << suffix[rand(0..5)]
        return array_of_letters * ""
    end
  end
end
=end

def word_translator(word)
  word.split("").each_with_index do |letter, index|
    if %w(a e i o u y).include?(letter)
      return "l" + word[index..-1] + word[0..index] + %w(em ji oc ic uche es).shuffle[0]
    end
  end
end

puts "enter a sentence"
sentence = gets.chomp.downcase
translator(sentence)