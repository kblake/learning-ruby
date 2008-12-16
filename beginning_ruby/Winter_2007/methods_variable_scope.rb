#scope: where and how long a variable can be accessed (where variables "live and die")
#program/application scope: variables accessible throughout code in this file
#method scope: variables accessible only in method definitions

#variables have program scope
num1,num2 = 10,23
puts num1, num2

def sum(num1,num2)
	puts "\ninside of method"
	num1 = num1 * 2
	num2 = num2 * 2
	puts num1,num2
	blah = "blah"
	puts "exiting method...\n\n"
end

sum(num1,num2)

#notice blah defined in the method, be careful
#it is not accessible outside of the method
#undefined local variable error
#puts blah

puts num1,num2








