class Students
	attr_accessor :students
	def initialize(students=[])
		@students = students
	end
	def empty?
		students.empty?
	end
	def add_student(person)
		@students << person
	end
	def get_first_student
		@students.first
	end

	def get_last_student
		@students.last
	end

	def add_student_to_beginning(person)
		@students.unshift(person)
	end
	
	def roster_size
		@students.size
	end

	def delete_student(index)
		@students.delete_at(index)
	end

	def sort_by_last_name
		@students.sort_by {|student| student.last_name}
	end

	#eval will take a string, convert it to ruby code, execute it
	def sort_by(property)
		@students.sort_by {|student| eval("student.#{property}")}
	end

	def sort
		@students.sort
	end

	def oldest
		sort_by(:age).last
	end

	def youngest
		sort_by(:age).first
	end

	def to_s
		@students.collect{|student| "#{student}"}
	end
	
end
