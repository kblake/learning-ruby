a = [1,2,3,4]
p a
a << 5
p a
a.push(6,7,8)
p a

b = [9,10,11]

p a + b

c = [1,1,1,1,2,2,2,2,3,3,3,4,4,4,4,5,5,5,5,5,6,6,6,6]
p c.uniq #remove duplicate objects

c.each {|num| print num," "}
c.each_with_index{|num,index| puts "#{index}: #{num}"}

#find the first object that matches a certain criteria
neo = c.detect{|num| num > 2 }
puts neo

#old school
#finding values greater than two
result = []
c.each { |num| result << num  if num > 2 }
p result

result = c.select{|num| num > 2}
p result

class Person
    attr_accessor :name,:age
    def initialize(name,age)
        @name,@age = name,age
      end
    def to_s
      "#{@name} and #{@age}"
    end
  end
  
people = [Person.new("tim",89),Person.new("doug",12),Person.new("dima",27)]
neo = people.find{|person| person.age == 27}
puts neo

myspace = people.select{|person| person.age > 14}
puts myspace

result = c.reject{|num| num > 2}
p result

result = c.select{|num| num >=2 && num <=5}
p result


names = ["marie","doug","dima","tim","timmy"]
numbers = [1,2,3,4,5]
p names
#creates a new array with changed elements
name_output = names.collect{|name| "<li>#{name}</li>"}
p name_output
puts
p numbers
squares = numbers.collect{|number| number*number}
p squares
class Pet
	attr_accessor :first_name,:last_name,:age
	def initialize(first_name,last_name,age)
		@first_name,@last_name,@age = first_name, last_name,age
	end
end
pets = [Pet.new("fido","doe",99),Pet.new("snoopy","johnson",34),Pet.new("hulk","hogan",65)]
pets_full_name = pets.collect{|pet| "#{pet.first_name} #{pet.last_name}"}
p pets_full_name


#accumulate using inject
sum = numbers.inject{|sum,num| sum + num} 
puts "sum is #{sum}"

puts
age_sum = pets.inject(0){|sum,pet| sum + pet.age}
puts "age sum from inject is #{age_sum}"
puts

#uck!
#age_sum = pets.collect{|pet| pet.age}.inject{|sum,age| sum + age}
#puts "age sum is #{age_sum}"

product = numbers.inject{|product,num| product * num}
puts "product is #{product}"
output = names.inject(""){|output,name| output << "<li>#{name}</li>"}
puts output
output = ""
names.each {|name| output << "<li>#{name}</li>"}
puts output