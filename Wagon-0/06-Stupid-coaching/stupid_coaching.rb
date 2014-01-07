def stupid_coaching
	puts 'What\'s your question ?'
	answer = gets.chomp
	puts answer
	until answer == 'I am going to work right now SIR !'		
		puts 'I can feel your motivation son !' if answer == answer.upcase
		if answer == 'I am going to work'
			new_state(answer)
		else 
			old_state(answer)
		end
		answer = gets.chomp
	end
end

def old_state(answer)
	if answer.end_with?("?")
		puts 'Silly question, get dressed and go to work !'
	else 
		puts 'I don\'t care son, get dressed and go to work !'
	end
end

def new_state(answer)
	puts 'good boy ! Take the subway, it will be faster'
	answer = gets.chomp
	if answer.end_with?("?")
		puts 'Silly question, take the subway and go to work !'
	else
		puts 'I don\'t care son, take the subway and go to work !'
	end
end

stupid_coaching