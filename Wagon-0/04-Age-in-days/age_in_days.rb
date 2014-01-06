def age(year, month, day)
(Time.new - Time.new(year, month, day))/60/60/24
end


# Testing your code
puts age(1985, 6, 11)
10436.7930035725
=> nil