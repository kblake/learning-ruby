def output_sum(num1,num2)
	#output (puts or say) the answer, does not return
	puts num1 + num2
end

output_sum(5,5)

def return_sum(num1,num2)
	#most other languages you need to use the 'return' key word
	#return num1+num2

	#ruby-specific: ruby will return the last value of a method
	num1 + num2
end

#this does nothing!! be careful!
return_sum(3,6)

#assign to variable
#use this technique if you need the sum value more than once
sum = return_sum(3,6)
puts "sum is #{sum}"

#print directly
#do this if you need the value only once
puts "another way to print return value #{return_sum(3,6)}"
