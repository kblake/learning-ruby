class Dog
	def initialize(name="Unknown",age=0)
		@name, @age = name,age
	end
	attr_accessor :name,:age
	
	def dog_years
		@age * 7
	end
	
	def prepare_for_file
		"#{@name} #{@age}\n"
	end
	
	def to_s
		"Hello my name is #{@name} and I am #{@age}"
	end
end

dogs = []
myfile = File.open("dogs.txt", "r")
myfile.each_line do|dog|
	dog_array = dog.split
	dogs << Dog.new(dog_array[0],dog_array[1].to_i)
end
myfile.close

dogs.each { |dog| puts dog.dog_years }

puts dogs[2]
puts
puts dogs[1]
dogs[1].name = "johnny"
puts dogs[1]

output = ""
dogs.each { |dog| output << dog.prepare_for_file}
puts output
open('dogs.txt','w') do |file|
	file.write(output)
end




































