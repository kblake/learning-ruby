#method definition ('parked car')
def say_hello
  puts "hello world!"
end

#method call ('drive that baby')
say_hello

#don't drive cars that you don't have!!
#~ Say_hello
#~ sayHello
#~ say_HellO

puts

10.times do
	say_hello
end
puts

#method parameter/argument(s): programmer to give the method something to use
#put the parameter in the defined temporary variable
def say_message message
	puts message
end

say_message "hola!"
say_message "hello there!"
say_message "waz up!"
puts 
puts
#don't forget to give the method expected argument
#say_message


#scope: where a variable lives and how long it lives
#examples, method scope, program scope

message = "some message"
num = 10
def say_message message
  #local variable (local inside the method): variable that lives and dies in a method definition
  num = 30
  num = 20
  puts "#{num} is a local variable"
  puts message
  message = "ha ha I changed your message"
  puts message
end
say_message message
puts num
puts message
puts

#return values: method returns a value from it
def sum num1,num2
	sum = num1 + num2
	return sum #other languages use 'return'
end
puts sum 5,30

def sum num1,num2
	sum = num1 + num2
	sum #the last value in a method gets returned by default only in Ruby
end
puts sum 5,30

def sum num1,num2
	num1 + num2
end

#~ puts "enter num1"
#~ num1 = gets.to_i
#~ puts "enter num2"
#~ num2 = gets.to_i
#~ puts sum num1,num2

#methods that return true or false
#by convention start with is or has
# end the name with a ?
#~ def is_odd? local_variable
	#~ local_variable%2 == 1
#~ end

#~ puts "give me a number"
#~ num = gets.to_i
#~ if is_odd? num
	#~ puts "#{num} is odd"
#~ else
	#~ puts "#{num} is even"
#~ end

#~ num = 1
#~ while is_odd? num
	#~ puts "enter a number"
	#~ num = gets.to_i
#~ end
#~ puts "you entered an even and are now out of the loop"


#~ def is_half_full? tank_status
	#~ if tank_status == "yes"
		#~ puts "Tank is half full"
		#~ true
	#~ else
		#~ puts "Tank not half full"
		#~ false
	#~ end
#~ end


#~ puts "Is your tank half full (yes/no)"
#~ tank_status = gets.chomp

#~ #does nothing with return value
#~ is_half_full? tank_status

#~ #assign the return value to a variable
#~ half_full = is_half_full? tank_status

#use return value in a string output
#~ puts "Tank status: #{is_half_full? tank_status}"
puts
puts "odd or even message is..."
def get_odd_or_even_message number
	if number%2 == 1
		"number is odd"
	else
		"number is even"
	end
end

def print_odd_or_even_message number
	if number%2 == 1
		puts "number is odd"
	else
		puts "number is even"
	end
end


#assign the return value to a variable where you can do whatever you want with it
message = get_odd_or_even_message 34

#use return value for output
puts "Odd-even status: #{get_odd_or_even_message 33}"

#use our custom method to output information
print_odd_or_even_message 2
print_odd_or_even_message 3

def print_hello num1,num2
	puts "Hello, I will perform a calulation on these two numbers #{num1} and #{num2}"
end
#methods calling other methods
def sum number1,number2
	print_hello number1,number2
	number1 + number2
end
def difference num1,num2
	print_hello num1,num2
	num1 - num2
end
def product num1,num2
	print_hello num1,num2
	num1 * num2
end
def do_math num1,num2
	#method calls from within a method
	sum = sum num1,num2 
	difference = difference num1,num2
	puts product num1,num2
	puts "Sum is #{sum} and Difference is #{difference}"
end

do_math 23,6

#if more than one argument, the optional argument needs to be last
def sum message,*numbers
	puts message
	sum = 0
	numbers.each{|num| sum += num}
	sum
end

puts sum "hello",3,5
puts sum "hello",3,4,5
puts sum "hello",3,2,64,45
puts sum "hello",3,5,3,6,3,6,3,3,5,6,2
puts sum "hello"















gets







