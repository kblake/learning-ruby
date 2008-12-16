$stdout.sync = true

class Person
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def to_s
    "Hello my name is #{@name}."
  end
  
  def fancy_name
     "Fancy name: #{@name.reverse}"
  end
  
  #private method,only accessible internally
  def super_fancy
    "Super fancy name: #{@name.upcase}"
  end
  
  #it would be silly to create this method
  #it undermines your private method
  #private methods are great for internal utility functionality for
  #internal processing.  There would not be a need to be access from the
  #outside
  def super_output
    super_fancy
  end
  
  private :super_fancy
  
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
  
  #override inherited method
  def fancy_name
    "Fancy name: " + "#{@name}, "*3
  end
end


person1 = Person.new("john doe")
puts person1
puts person1.fancy_name
#cannot execute the next line
#puts person1.super_fancy
puts person1.super_output

student1 = Student.new("jane doe", 1234)
puts student1
puts student1.fancy_name

puts "Let's create a student shall we..."
puts "Enter name"
name = gets.chomp
puts "Enter SID"
sid = gets.chomp
student2 = Student.new(name,sid)
puts student2

teacher1 = Teacher.new("tom affholter","CIS")
puts teacher1
puts "Call overridden method..."
puts teacher1.fancy_name

#array or objects, polymorphic by nature!!
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
puts
puts "fancy name print out"
classroom.each do |person|
  puts person.fancy_name
end
