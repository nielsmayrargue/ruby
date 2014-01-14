def parse_mail(mail)
 
  jokes_repertory = {
  	"gmail" => "you're an average but modern person", "lewagon" => "you're skilled and capable" }
 
  if mail.match(/[\w.-]+@[\w.-]+\.com/)

    user_name = mail[0,mail.index("@")]
    first_name = user_name.split(/[._]/).first
    last_name = user_name.split(/[._]/).last
    provider = mail[mail.index("@")+1..-1].split(".").first

    if /\w+[._][a-z]+/.match(user_name) 
    	puts "Well done #{first_name} #{last_name}, #{jokes_repertory[provider]}"
    else /[a-z]+[.][a-z]+/.match(user_name) != user_name
    	puts "Well done #{user_name}, #{jokes_repertory[provider]}"
    end

  else 
    puts "this email address is not valid. Type a new one"
    mail = gets.chomp
    parse_mail(mail)
  end

end

puts "type your email address champ"
mail = gets.chomp
parse_mail(mail) # => "Well done boris, you're skilled and capable"