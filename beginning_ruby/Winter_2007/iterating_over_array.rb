numbers = []
#populate array with random numbers
100.times do
	numbers << rand(100)
end

p numbers
puts

#iterate over the array and display the odd numbers
puts "Odd numbers are:"
numbers.each do | number |
	if number % 2 == 1
		print "#{number} "
	end
end
puts
puts
numbers.each {|number| print "#{number} " if number%2==1 }
puts
puts
numbers.each_with_index do | number,index |
	if number % 2 == 1
		print "#{index}:#{number} "
	end
end


gets







