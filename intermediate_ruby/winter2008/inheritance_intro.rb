class Person
  attr_accessor :name
  def greeting
    "Hello I'm #{@name}"
  end
end

class Doctor < Person
  attr_accessor :type
  def specialty
    "My specialty is in #{@type}"
  end
end

person = Person.new
person.name = "Johnny"
puts person.greeting
doctor = Doctor.new
doctor.name = "John" #use inherited attribute
doctor.type = "Family Doctor"
puts doctor.greeting #use inherited method
puts doctor.specialty

