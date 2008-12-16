class Person
	include Comparable
	attr_accessor :first_name,:last_name,:age
	def initialize(first_name,last_name,age)
		@first_name,@last_name,@age = first_name,last_name,age
	end
	def full_name
		first_name + " " + last_name
	end

	def <=>(other_person)
		if(self.last_name == other_person.last_name)
			self.age <=> other_person.age
		else
			self.last_name <=> other_person.last_name
		end
	end

	def to_s
		"#{@first_name} - #{@last_name} - #{@age}"
	end
end                                                                                                    
