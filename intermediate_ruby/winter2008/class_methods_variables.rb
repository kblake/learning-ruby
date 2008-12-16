class Person
  #class variables usually defined in a class scope not method scope
  #@@ tell ruby that it is a class variable
  @@count = 0

  attr_accessor :name,:age,:my_count
  def initialize(name,age)
    @name,@age, = name,age
    @@count += 1
  end

  #class method, start with self
  def self.count
    @@count
  end

  def self.find_oldest(*people)
    people.sort_by {|person| person.age}.last
  end

  def self.find_youngest(*people)
    people.sort_by {|person| person.age}.first
  end

  def to_s
    "My name is #{@name} and my age is #{@age}.  #{@@count} People"
  end
end

p1 = Person.new("blah",33)
puts p1
#when you call a class method, use the class_name.method_name
puts Person.count
p2 = Person.new("tim",13)
puts p2
puts Person.count
p3 = Person.new("doug",36)
puts p3
puts Person.count


puts "Oldest person: #{Person.find_oldest(p1,p2,p3)}"
puts "Youngest person: #{Person.find_youngest(p1,p2,p3)}"
