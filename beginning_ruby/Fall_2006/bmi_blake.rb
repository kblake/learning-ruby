require 'rubygems'
require 'highline/import'

upper_limit_for_healthy = 25
healthy_range = 19..upper_limit_for_healthy
while(agree("Do you want to check your bmi? (y/n)",true))
	weight = ask("Enter weight in pounds.",Integer)
	height = ask("Enter height in inches.",Integer)
	bmi = (weight*720)/(height**2)
	say "Your BMI is #{bmi}"
	 if bmi > upper_limit_for_healthy
		say "You are above healthy range"
	elsif (healthy_range).include?(bmi)
		say "You are within healthy range"
	else 
		say "You are below healthy range"
	end
end