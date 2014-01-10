=begin

def most_common_words(file_name,n)

  string_stop_words = "a,able,about,across,after,all,almost,also,am,among,an,and,any,are,as,at,be,because,been,but,by,can,cannot,could,dear,did,do,does,either,else,ever,every,for,from,get,got,had,has,have,he,her,hers,him,his,how,however,i,if,in,into,is,it,its,just,least,let,like,likely,may,me,might,most,must,my,neither,no,nor,not,of,off,often,on,only,or,other,our,own,rather,said,say,says,she,should,since,so,some,than,that,the,their,them,then,there,these,they,this,tis,to,too,twas,us,wants,was,we,were,what,when,where,which,while,who,whom,why,will,with,would,yet,you,your"
  array_stop_words=string_stop_words.split(",")
  compteur = Hash.new { |h, k| h[k] = 0 }

  #delete all the stop_words from the txt
  
  #stop_words.each do |x|
  File.open(file_name).each_line do |line|
    array_line = line.chomp.to_s.downcase.split
    array_line.each do |mot|
    compteur[mot] += 1
    end
  end

    array_stop_words.each do |sw|
      compteur.delete_if { |k| k == sw}
    end
    
p Hash[compteur.sort_by { |k, v| -v }[0..n]]

end

# test

most_common_words("C:/LeWagon/ruby/Wagon-2/06-Word-frequency/source-text.txt",3)

=end

def cleaner(text_array)
# This function cleans 
  string_stop_words = "-,a,able,about,across,after,all,almost,also,am,among,an,and,any,are,as,at,be,because,been,but,by,can,cannot,could,dear,did,do,does,either,else,ever,every,for,from,get,got,had,has,have,he,her,hers,him,his,how,however,i,if,in,into,is,it,its,just,least,let,like,likely,may,me,might,most,must,my,neither,no,nor,not,of,off,often,on,only,or,other,our,own,rather,said,say,says,she,should,since,so,some,than,that,the,their,them,then,there,these,they,this,tis,to,too,twas,us,wants,was,we,were,what,when,where,which,while,who,whom,why,will,with,would,yet,you,your"
  array_stop_words=string_stop_words.split(",")

  array_stop_words.each do |x|
    text_array.delete_if { |y| y == x}
  end

end

def most_common_words(file_name,n)

  compteur = Hash.new { |h, k| h[k] = 0 }

  File.open(file_name).each_line do |line|
    array_line = line.chomp.to_s.downcase.split
    cleaner(array_line)
    array_line.each do |mot|
    compteur[mot] += 1
    end
  end
  
  p Hash[compteur.sort_by { |k, v| -v }[0..n]]

end

# test

most_common_words("C:/LeWagon/ruby/Wagon-2/06-Word-frequency/source-text.txt",3)

