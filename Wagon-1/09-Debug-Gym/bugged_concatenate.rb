def bugged_concatenate(*args)
  # 2. fix the code: TypeError;
  args = args[0] if args.length == 1 and args[0].is_a?(Array)
	puts args.inject("") { |output, element| output + element.to_s }.upcase
 end


# 1. fix the method call: ArgumentError

bugged_concatenate( [1, "9", 84, " ", "George Orwell"] )

bugged_concatenate( 1, "9", 84, " ", "George Orwell" )
