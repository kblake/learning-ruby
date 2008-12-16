require 'class_library'

#object-based
#~ name = "karl"
#~ puts name.reverse

person1 = Person.new #new is a keyword used for instantiation
person1.say_hello
person1.update_age(29)
puts "Person 1's age is #{person1.age}"
person1.output_age
person1.age = 30
person1.output_age
person1.name = "Caleb"
puts person1.name
puts
person2 = Person.new("matt")
person2.say_hello
person2.age = 58
person2.output_age

puts
person3 = Person.new("jeffrey",99)
person3.say_hello
puts person3.name
puts person3.age

puts
person4 = Person.new
person4.say_hello
puts person4.name
puts person4.age












