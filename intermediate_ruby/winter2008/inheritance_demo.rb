class Person
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def to_s
    "Hello my name is #{@name}."
  end
end

class Student < Person
  attr_accessor :sid
  def initialize(name,sid)
    super(name)
    @sid = sid
  end
  def to_s
    super + "  My SID is #{@sid}."
  end
end

class Teacher < Person
  attr_accessor :department
  def initialize(name,department)
    super(name)
    @department = department
  end
  def to_s
    super + "  I teach in the #{@department} department."
  end
end

person1 = Person.new("john doe")
puts person1

student1 = Student.new("jane doe", 1234)
puts student1

puts "Let's create a student shall we..."
student2 = Student.new("Jack Black",8888)
puts student2

teacher1 = Teacher.new("tom affholter","CIS")
puts teacher1

classroom = [
  Student.new("jack",1234),
  Student.new("jane",1255),
  Student.new("mary",3333),
  Teacher.new("mr. hand","Math")
]

puts
puts "to_s printout"
classroom.each do |person|
  puts person
end
