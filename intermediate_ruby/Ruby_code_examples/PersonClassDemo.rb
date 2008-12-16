class Person
   attr_accessor :name, :age
   
  def initialize(name="Mickey Mouse", age = 10)
    @name = name
    @age = age
  end
  
  def get_upper_name
    @name.upcase
  end
  
  def to_s
    "My name is #@name and my age is #@age"
  end
end

person1 = Person.new
puts person1
person2 = Person.new("Minnie Mouse")
puts person2

puts person1.name
person1.name = "lala lalala"
person1.age = 100
puts person1.age
puts "Person 1 info: #{person1}"
