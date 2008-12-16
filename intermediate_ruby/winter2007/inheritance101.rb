class Animal
	attr_accessor :name,:fur
	def initialize(name="No name")
		@name = name
		@fur = true
	end
end

class Dog < Animal
	attr_accessor :can_bark

	def initialize(can_bark,name="No name")
		super(name)
		@can_bark = can_bark
	end
end

class Cat < Animal
	attr_accessor :has_furballs
end

class Mouse < Animal
	attr_accessor :can_squeak
end

a = Animal.new
a.name = "some animal"
puts a.name
puts
a2 = Animal.new
puts a2.name
puts
a3 = Animal.new("goose")
puts a3.name
puts
d = Dog.new(true)
d.name = "fido"
d.can_bark = true
puts d.name, d.can_bark
puts
d2 = Dog.new(false)
d2.name = "snoopy"
puts d2.name
puts
d3 = Dog.new(true,"lassy")
puts d3.name
puts
c = Cat.new
c.name = "garfield"
c.has_furballs = false
puts c.name, c.has_furballs
puts
m = Mouse.new
m.name = "mickey"
m.can_squeak = true 
puts m.name,m.can_squeak












