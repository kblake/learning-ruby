#stuck passing in only two values!!!
def sum(num1,num2)
	num1 + num2
	#return num1 + num2
end

#I can pass in any number of values (hint: look at the calls below)
def sum_many(*numbers)
	#numbers is an array, so we can call and do array stuff
	#puts numbers.size
	#puts numbers.first
	#puts numbers.last
	#numbers.each {|num| puts num }
	numbers.each do |num|
		print num," "
	end
	puts
	#puts numbers[1]
	#sum = 0
	#numbers.each{|num| sum += num }
	#sum
	#inject == accumulate
	#accumulute, sum || concatenation
	numbers.inject(0) {|sum,num| sum+=num}
end

#if more than one parameter, the variable argument must be last
#there can be only one variable argument
def print_average(name,sid,*grades)
	puts "Hello #{name} (#{sid})"
	#calculate average here...
	puts grades
end

puts sum(10,3)
puts sum(203,32)
sum = sum_many(34,352,4623,345)
puts "Sum of many numbers is #{sum}"
sum = sum_many(34,352,4623,345,83,3832)
puts "Sum of many numbers is #{sum}"
sum = sum_many(34,352,4623)
puts "Sum of many numbers is #{sum}"
sum = sum_many(34,352,4623,345,3,432,25,23,52,5312)
puts "Sum of many numbers is #{sum}"

print_average("john",33333,88,99,44,100)
print_average("doe",88888,100,33)
print_average("blah",99999,34,55,63,22,99,11,31,24,34,12)
print_average("kdkdkd",93939)


#off on a tangent
#inject used as a concatenation technique
names = ['john','doe','was','here']
output = names.inject(""){|output,name| output << "Hello #{name}"}
puts output












