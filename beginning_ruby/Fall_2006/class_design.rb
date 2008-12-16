class Thanksgiving
	def initialize(appetizer,dinner,dessert)
		@appetizer,@dinner,@dessert = appetizer,dinner,dessert
	end
	
	#attr* family is ruby specific, other languages you have to write setter/getter methods
	attr_accessor :appetizer,:dessert
	attr_reader :dinner
	attr_writer :dinner_calories,:dessert_calories
	
	def print_calorie_report
		puts "Turkey calorie report: #{sum_calories}"
	end
	
	def sum_calories
		@dinner_calories + @dessert_calories
	end
	
	def to_s
		"#{@appetizer} #{@dinner} #{@dessert}"
	end
end

meal = Thanksgiving.new("shrimp cocktail","turkey","pumpkin pie")
puts meal

#set/write
meal.appetizer = "stuffing"
meal.dessert = "pecan pie"

#get/read
puts meal.appetizer
puts meal.dessert
puts meal.dinner

#cannot set dinner because it is read-only
#meal.dinner = "ham"

meal.dinner_calories = 3500
meal.dessert_calories = 2000
meal.print_calorie_report




















