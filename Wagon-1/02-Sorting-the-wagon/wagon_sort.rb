def wagon_sort
student_array = []
puts 'Type a student:'
name = gets.chomp

	until name.empty?
		add_student(student_array,name)
		puts 'Type a student:'
		name = gets.chomp	
	end

puts student_array

end

def add_student(student_array,name)
	student_array << name
	student_array.sort_by! { |x| x.downcase }
end
# your code to interact with the user..
wagon_sort