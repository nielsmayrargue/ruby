def stupid_coaching
	puts 'What\'s your question ?'
	has_answered_first = false
	answer = gets.chomp

	until answer == 'I am bored SIR !'		
		puts 'I can feel your motivation son !' if answer == answer.upcase
		if answer == "I am going to work"
			puts "good boy"
			has_answered_first = true 
			answer = gets.chomp
			next
		end

		if has_answered_first
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
	if answer.end_with?("?")
		puts 'Silly question, get dressed and take the subway !'
	else 
		puts 'I don\'t care son, get dressed and take the subway !'
	end
end

stupid_coaching