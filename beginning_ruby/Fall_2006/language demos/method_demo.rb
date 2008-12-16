def get_sum(num1,num2)
	return num1 + num2
end

go = "y"

while go == "y"
	puts "Enter number 1:"
	num1 = gets.chomp.to_i
	puts "Enter number2 :"
	num2 = gets.chomp.to_i
	puts "The sum of your two numbers is: #{get_sum(num1,num2)}"
	puts "Do you want to run again? (y/n)"
	go = gets.chomp
end

puts "bye bye!"
gets
