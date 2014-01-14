def group_mails( emails ) 
repertory = {}

emails.each do |email|
	provider = email[email.index("@")+1...email.index(".")]
  #provider = email.match(/@[\w]+/).to_s[1..-1]
	repertory[provider] != nil ? repertory[provider] << email  : repertory[provider] = [email]
end

return repertory

end

def has_provider?(user_array, provider)

  answer = false

  user_array.each do |user|
    provider_user = user.split("@").last
    answer = true if provider_user.include?(provider)
      end

  return answer
end

def has_provider2(user_array,provider)

  return group_mails(user_array).include?(provider)

end

users_emails = %w( bob@yahoo.fr 
                   roger57@hotmail.fr 
                   bigbox@yahoo.fr 
                   boris@lewagon.org 
                   monsieur.olivier@gmail.com 
                   monsieur.mack@gmail.com )
                   

puts group_mails( users_emails ) 
puts has_provider?(users_emails, "yahoo")
puts has_provider2(users_emails, "lala")

# => {"yahoo" => ["bob@yahoo.fr", "bigbox@yahoo.fr"], 
#     "hotmail" => ["roger57@hotmail.fr"], 
#     "lewagon" => ["boris@lewagon.org"], 
#     "gmail" => ["monsieur.olivier@gmail.com", 
#     "monsieur.mack@gmail.com"]}
