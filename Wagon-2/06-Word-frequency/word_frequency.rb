def is_stop_word?(word)
  stop_words = "-,a,able,about,across,after,all,almost,also,am,among,an,and,any,are,as,at,be,because,been,but,by,can,cannot,could,dear,did,do,does,either,else,ever,every,for,from,get,got,had,has,have,he,her,hers,him,his,how,however,i,if,in,into,is,it,its,just,least,let,like,likely,may,me,might,most,must,my,neither,no,nor,not,of,off,often,on,only,or,other,our,own,rather,said,say,says,she,should,since,so,some,than,that,the,their,them,then,there,these,they,this,tis,to,too,twas,us,wants,was,we,were,what,when,where,which,while,who,whom,why,will,with,would,yet,you,your"
  return stop_words.split(",").include?(word)
end

def most_common_words(file_name,n)
  text = ""
  compteur = {}

  File.open(file_name).each_line do |line|
    text += line.chomp
  end

  text.downcase.split(/\W+/).each do |word|
    unless is_stop_word?(word)
      compteur[word] = compteur[word] ? compteur[word] + 1 : 1
    end
  end

  return compteur.sort_by { |k, v| -v }[0..(n-1)]

end

# test

p most_common_words("C:/LeWagon/ruby/Wagon-2/06-Word-frequency/source-text.txt",3)

