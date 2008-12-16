#basic sorting, we will get more elaborate on this later
#sort objects by attribute
#array_of_objects.sort_by {|instance| instance.attribute}

class Person
  attr_reader :name,:age
  def initialize(name,age)
    @name,@age = name,age
  end
  def to_s
    "#{@name} - #{@age}"
  end
  def self.find_oldest(*people)
    people.sort_by {|person| person.age}.last
  end

  def self.find_youngest(*people)
    people.sort_by {|person| person.age}.first
  end
end

p1 = Person.new("blah",33)
puts p1
p2 = Person.new("tim",13)
puts p2
p3 = Person.new("doug",36)
puts p3

#generic class methods
puts "Youngest person: " + Person.find_youngest(p1,p2,p3).to_s
puts "Oldest person: " + Person.find_oldest(p1,p2,p3).to_s