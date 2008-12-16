#optional arguments
def product_by num, *numbers
	numbers.each do |number|
		puts "#{number} * #{num} = #{number * num}"
	end
end

product_by 10,35,4,5,32
product_by 2,35,34,3565

puts

#default parameters/arguments used for method definitions
def print_sum num1=0,num2=0
	puts num1 + num2	
end

print_sum 34,563
print_sum 34
print_sum

def print_name name="Name not provided"
	puts name
end

print_name "Johnny"
print_name

puts
#named parameters (uses a hash)
def print_student something_else, blah, info={}
	puts something_else + " " + blah
	puts "#{info['name']} is #{info['age']} old and has a gpa of #{info['gpa']}"
end

print_student("yea","nay",{'name'=>'jon','age'=>99,'gpa'=>2.0})

#without curly braces, it is assumed that the last parameter is a hash, so no curly braces were needed.
print_student("oink","chirp",'name'=>'mary','age'=>78,'gpa'=>4.0)













gets





