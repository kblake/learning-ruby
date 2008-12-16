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
neo = c.find{|num| num > 2 }
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




















































