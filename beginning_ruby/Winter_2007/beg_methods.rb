#method definition, does nothing until called
def say_hello
	puts "hello"	
end

def another_hello
	puts "hello there" * 3
end

def hello_friend(name)
	puts "hello #{name}"
end

#common argument passing errors
#hello_friend #wrong number of arguments (0 for 1)
#hello_friend("blah","blah") #wrong number of arguments (2 for 1)

def static_sum
	puts 10 + 3
end

#pass the method some information, two variables
def sum(number1,number2)
	puts "number 1 is #{number1}"
	puts "number 2 is #{number2}"
	puts number1 + number2
end

#call the methods
say_hello
say_hello
say_hello
another_hello
another_hello
static_sum
static_sum
static_sum
sum(10,3)
sum(2003,3423)
sum(-2323,234354)
sum(443,-345)

hello_friend("john doe")
3.times do
	puts "enter name"
	name = gets.chomp
	hello_friend(name)
end




gets
