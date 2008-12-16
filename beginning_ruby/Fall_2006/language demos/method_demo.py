def get_sum(num1, num2):
	return num1 + num2

go = "y"
while go=="y":
	num1 = input("Enter number 1: ")
	num2 = input("Enter number 2: ")
	print "The sum of your two numbers is: ", get_sum(num1,num2)
	go = raw_input("Do yo want to go again? (y/n)")
	
	
