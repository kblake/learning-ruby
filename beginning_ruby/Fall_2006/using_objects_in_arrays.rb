names = ['john','tim','harry','marie','lala']
puts names[2].length
names << "joe"

class Person
	def initialize(name)
		@name = name
	end
	
	#getter, accessor
	def name
		@name
	end
	
	#setter, mutator
	def name=(name)
		@name = name
	end
	
	#special method that should be written for custom classes
	#kind and meaningful description of your object and its
	#properties
	#to avoid garbage output
	def to_s
		"My name is #{@name}."
	end
end

people = [Person.new("john"),Person.new("tim"),Person.new("harry"),Person.new("marie"),Person.new("lala")]
puts people[2].name.length
puts people[2]
puts people[4]
people[4].name = "sean"
puts people[4]
people << Person.new("joe")


































