require "rubygems"
require "highline/import"

################################
# methods may be put into another file and brought in using 'require'
#################################
def get_numbers
	number1 = ask("Enter number 1", Integer)
	number2 = ask("Enter number 2", Integer)
	return number1, number2
end

def sum num1,num2
	num1 + num2
end
def difference num1,num2
	(num1 - num2).abs
end
def product num1,num2
	num1 * num2
end
#################################

line = '='*72
say "Welcome to my math program"
loop do
	puts line
	choose do |menu|
	  menu.prompt = "What math operation do you want to do? "
	  menu.choice "Sum"   do	
		number1,number2 = get_numbers
		say "Sum is: #{sum(number1,number2)}"
	  end
	  menu.choice "Difference" do 
		 number1,number2 = get_numbers
		  say "Difference is: #{difference(number1,number2)}"
	  end
	  menu.choice "Product"  do 
		  number1,number2 = get_numbers
		  say "Product is: #{product(number1,number2)}"
		end
	  menu.choice "Exit" do 
		  say "Bye Bye!"
		  exit 
	  end
  end
end