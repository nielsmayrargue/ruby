def stupid_coaching 
puts 'What\'s your question ?'
answer = gets.chomp
if answer[-1,1] == "?"
	puts 'Silly question, get dressed and go to work !'
elsif answer[-1,1] == "!"
	puts 'Amazing Niels ! I will answer all your questions !'
elsif answer == "I am going to work"
new_rela
elsif answer.upcase! == nil
puts 'I can feel your motivation son !'
else
	puts 'I don\'t care son, get dressed and go to work'
end
stupid_coaching
end

def new_rela
puts 'what\'s your question ?'
answer_2 = gets.chomp
if answer_2[-1,1] == "?"
puts 'Silly question, take the subway and go to work !'
elsif answer_2[-1,1] == "!"
puts 'I don\'t care son, take the subway and go to work !'
end
new_rela
end
	
# Calling the method
stupid_coaching