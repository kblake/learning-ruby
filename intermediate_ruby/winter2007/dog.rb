class Dog
	include Comparable 
	attr_accessor :name,:age
	def initialize(name,age)
		@name,@age = name,age
	end
	
	def <=>(other_dog)
		if (self.name == other_dog.name)
			self.age <=> other_dog.age
		else
			self.name <=> other_dog.name
		end
	end
	def to_s
		@name + " " + @age.to_s
	end
end
