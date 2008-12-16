def get_numbers
	num1 = ask("Enter number 1", Integer)
	num2 = ask("Enter number 2", Integer)
	return num1,num2 #returns two numbers
end

def sum(num1,num2)
	num1 + num2
end

def product(num1,num2)
	num1 * num2
end