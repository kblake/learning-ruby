class Person
	def age=(age)
		@age = age
	end
	def first_name=(first_name)
		@first_name = first_name
	end
	def last_name=(last_name)
		@last_name = last_name
	end
	
	def age
		return @age
	end
	def first_name
		@first_name
	end
	def last_name
		@last_name
	end
	def to_s
		"Age is #{@age}, name is #{@first_name} #{@last_name}"
	end
end

def read_names
	names = []
	file_name = "names.txt"
	if File.exists?(file_name)
		IO.foreach(file_name)do |line| 
			person_array = line.chomp.split(",")
			person = Person.new
			person.first_name = person_array[0]
			person.last_name = person_array[1]
			person.age = person_array[2].to_i
			names << person
		end
	else
		names = []
	end
	names
end

def display_people(people)
	people.each {|person| puts person }
end

def sum_ages(people)
	#sum = people.inject(0){|sum,person| sum+=person.age}
	sum = 0
	people.each do |person|
		sum += person.age
	end
	sum
end

def write_people(people)
	output = ""
	people.each do |person|
		output << "#{person.first_name},#{person.last_name},#{person.age}\n"
	end
	open("names.txt","w") { |file|	file.write(output) }
end

people = read_names
display_people(people)
puts "Sum of all ages is: #{sum_ages(people)}"

puts "Enter first name"
first_name = gets.chomp
puts "Enter last name"
last_name = gets.chomp
puts "Enter age"
age = gets.chomp
person = Person.new
person.first_name = first_name
person.last_name = last_name
person.age = age
people << person
display_people(people)
write_people(people)


gets


















