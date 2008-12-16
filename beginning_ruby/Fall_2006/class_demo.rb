#class definition
#class is new key word
#convention: start class names with uppercase
#for now, singular
class Student
	
	#special: constructor
	#only called once during the lifetime of an object
	#!! huh? when you call the 'new'
	def initialize(name="No name")
		@name = name
	end
	
	#@variable_name has class scope
	#setter: take value from external source
	def set_name(name)
		@name = name
	end
	
	#syntactic sugar
	#setter: take value from external source
	def name=(name)
		@name = name
	end
	
	#getter: return a value to external caller
	def name
		@name
	end
	
	def name_greeting 
		"Hello my name is #{@name}"
	end
	
	def study
		puts "Ouch, my brain is hurting."
	end
	def spinning_my_wheels
		puts "I studied #{rand(12)} hours last night"
	end
	def print_letter_grade(gpa)
		puts case gpa 
				when 4.0: "A"
				when 3.0..3.9: "B"
				when 2.0..2.9: "C"
				when 1.0..1.9: "D"
				else "Uh-oh"
			end
	end
	
	def greeting
		"Greetings!  Hello World"
	end
		
end


#instantiation
#variable_name = ClassName.new
student1 = Student.new
puts student1.name
#method call - object-based programming
#use the variable_name.method_name
student1.study
student1.spinning_my_wheels
student1.print_letter_grade(3.5)
puts student1.greeting
student1.set_name("sean") #calling the setter
puts student1.name #calling the getter
student1.name = "sean glover" #calling the setter
puts student1.name
puts
student2 = Student.new
puts student2.name
student2.study
student2.spinning_my_wheels
student2.print_letter_grade(2.9)
puts student2.greeting
student2.set_name("doug")
puts student2.name

#instantiating a string object
name = "tom"
#call a method
#use the variable_name.method_name
name.length

puts
s3 = Student.new("dima")
puts s3.name































