a = [1,2,3,4]
p a
a.push(5,6,7) #push more than one elemeent
p a

b = [10,33,35]
p b

p a + b #combine arrays

c = [1,1,1,2,3,3,4,4,4,4,4,2,1,3]
p c.uniq

#iteration/filtering/querying
c.each {|num| print num," "}
puts
c.each_with_index {|num,index| puts "#{index}: #{num}" } 

#find first object that meets criteria
chosen_one = c.find {|num| num > 2}
puts chosen_one

class Person
  attr_accessor :age
  def initialize(age)
    @age = age
  end
  def to_s
      age
  end
end

people = [Person.new(38),Person.new(31),Person.new(99),Person.new(10)]
person = people.find {|person| person.age >= 21}
puts person.age


#find all objects that meet criteria
result = c.find_all {|num| num > 2 }
p result

result = people.select {|person| person.age >= 21 }
result.each {|person| puts person.to_s }

result = c.reject {|num| num > 2}
p result














