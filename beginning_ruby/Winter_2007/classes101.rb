#old-school
name = "whatever"
age = 99
def above_62?(age)
	age > 62
end

puts name
puts age
puts above_62?(age)

#using a class (blueprint/template)
#class names start with upper-case
#@ gives variables class-level scope
class Person
	#passing in values to object
	#update property values
	def age=(age)
		@age = age
	end
	def name=(name)
		@name = name
	end
	def sid=(sid)
		@sid = sid
	end
	
	#return values from object
	def age
		return @age
	end
	def name
		@name
	end
	def sid
		@sid
	end
	
	def crazy_output
		"some crazy cool output here..."
	end
	
	#to string: general string description of itself
	#always!! returns!! a string, NO puts!!
	def to_s
		"Age is #{@age}, name is #{@name} and sid is #{@sid}"
	end
end

#use the class name.new where new means instantiate
#then assign that object to a variable
person1 = Person.new
person1.age = 45
person1.name = "John Doe"
person1.sid = "1234"
#output an object variable and the to_s is called by default
#to_s is "special"
puts person1
puts person1.crazy_output

person2 = Person.new
person2.age = 29
person2.name = "Doug"
person2.sid = "2345"
#explicit call to the to_s
puts person2.to_s

total_age = person1.age + person2.age
puts "Total age: #{total_age}"

#update values at any time
person1.age = 22

total_age = person1.age + person2.age
puts "Total age: #{total_age}"
