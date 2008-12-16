class Person
  attr_accessor :lastname,:firstname,:age
  def initialize(firstname,lastname,age)
    @lastname = lastname
    @firstname = firstname
    @age = age
  end

  def name
    "#{@firstname} #{@lastname}"
  end

  def to_s
    "Hello my name is #{name} and my age is #{@age}"
  end
end

people = [Person.new("joe","blow",34),Person.new("lala","blow",73),
          Person.new("mary","watson",23),Person.new("annie","red",5),
          Person.new("bob","builder",51),Person.new("blah","red",6),
          Person.new("blah","red",2)]
sorted_people = people.sort_by{|person| [person.lastname,person.firstname,person.age]}
sorted_people.each {|person| puts person }
