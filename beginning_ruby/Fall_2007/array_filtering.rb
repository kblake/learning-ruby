numbers = [3,5,2,64,23,76,1,35,88]

#find the first occurrence that fulfills this specification
the_one = numbers.find { |number| number > 50 }
puts the_one
the_one = numbers.find { |number| number < 10 }
puts the_one
the_one = numbers.find { |number| number > 10 && number < 50 }
puts the_one
the_one = numbers.find { |number| number %2==0 && number < 50 }
puts the_one


#find the all occurrences that fulfill this specification
the_ones = numbers.find_all { |number| number > 50 }
p the_ones
the_ones = numbers.find_all { |number| number < 10 }.sort
p the_ones
the_ones = numbers.find_all { |number| number > 10 && number < 50 }
p the_ones
the_ones = numbers.find_all { |number| number %2==0 && number < 70 }
p the_ones


rejected = numbers.reject{|number| number > 50 }
p rejected
p numbers
















