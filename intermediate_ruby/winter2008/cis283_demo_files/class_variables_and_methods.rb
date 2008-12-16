class Person
  attr_reader :age
  
  @@count = 0
  def initialize(name,age)
    @name,@age = name,age
    @@count += 1
  end
  
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
    "My name is #{@name} and my age is #{@age}"
  end
  
end



person1 = Person.new("blah",33)
puts person1
puts "Number of people created so far: #{Person.count}"

person2 = Person.new("Tim",13)
puts person2
puts "Number of people created so far: #{Person.count}"

person3 = Person.new("Doug",83)
puts person3
puts "Number of people created so far: #{Person.count}"

puts "Oldest person: #{Person.find_oldest(person1,person2,person3)}"
puts "Youngest person: #{Person.find_youngest(person1,person2,person3)}"


