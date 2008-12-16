class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def jump
    "jumping..."
  end
  def to_s
    "Hello my name is #{@name}"
  end
end

class Student < Person
  attr_accessor :sid
  def initialize(name, sid)
    super(name) #calls parent's initialize
    @sid = sid
  end
  def jump #override parent's jump method
    super + " and hopping" #but reuse parent's functionality
  end
  def to_s
    super + " and my SID is #{@sid}"
  end
end

person = Person.new("John doe")
puts person
puts person.jump

student = Student.new("Jack Black", 12345)
puts student
puts student.jump
