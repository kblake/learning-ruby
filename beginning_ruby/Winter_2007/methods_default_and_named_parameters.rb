#DEFAULT params
def print_name(name="No name")
	puts name
end

def sum(num1=0,num2=0,num3=0)
	num1 + num2 + num3
end

print_name("John Doe")
print_name()
puts
puts "2 + 2 + 2= #{sum(2,2,2)}" #2 + 2 + 2
puts "2 + 2 = #{sum(2,2)}" #2 + 2 + 0
puts "sum of 2 is #{sum(2)}" #2 + 0 + 0 
puts "sum of nothing is #{sum()}" #0 + 0 + 0
#############################################
#NAMED params
#a way to meaningfully call methods and nudge or direct programmers
#to pass in correct values for defined parameters
def area(sides={})
	#p sides
	sides[:sideA] * sides[:sideB]
end
def print_person(name,age,other={})
	#p other
	puts "#{name}, #{age}"
	other.each {|key,value| puts "#{key} --> #{value}" }
end

puts area({:sideA=>20,:sideB=>5})
puts area(:sideA=>3,:sideB=>6)
print_person("john doe",88,:sid=>123456789,:college=>"SCC",:cumul_gpa=>3.8)














