def age_in_days(day, month, year)
(Time.new - Time.new(year, month, day))/60/60/24
end


# Testing your code
puts age_in_days(6, 11, 1985)
puts age(1985, 6, 11)
10436.7930035725
=> nil