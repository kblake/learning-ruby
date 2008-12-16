require 'rubygems'
require 'highline/import'
require 'highline_menus_methods' #method definitions defined in external file

line = "="*72
puts line
say "Welcome to my math program"

#highline menu stuff...
loop do   #setup infinite loop
	puts line
	choose do |menu| #setup menu system
		menu.prompt = "What math operation do you want to do? " #question to drive users to your choices
		
		#choice block, display string
		menu.choice "Sum" do
			#what you will do if the user chooses this option
			num1,num2 = get_numbers #return and assign two numbers
			say "Sum is: #{sum(num1,num2)}"
		end
		
		menu.choice "Product" do
			num1,num2 = get_numbers #return and assign two numbers
			say "Product is: #{product(num1,num2)}"
		end
		
		menu.choice "Exit" do
			say "Bye bye!"
			exit
		end
	end
end




















