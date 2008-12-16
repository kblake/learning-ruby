#object-oriented
#class definition
#blueprint
#design
#naming convention: start with upper case, camel-case other words
class Person
  #SPECIAL method to initialize instance data
  #called when you instantiate an object using 'new'
  #constructor
  def initialize(name="No name",age=0)
    @age = age
    @name = name
  end
  
  def say_hello
    puts "hello world!"
  end
  def output_age
    puts "I am #{@age} years old"
  end
  #method to return the value of age
  def age
    @age
  end
  
  def name=(name)
    @name = name
  end
  
  def name
    @name
  end
  
  #update the value of age
  #universal
  def update_age(age)
    @age = age
  end
  
  #rubyism
  def age=(age)
      @age = age
  end 
end

class Automobile
  attr_accessor :make, :model
  attr_reader :year
  def initialize(make="No make",model="No model", year=false)
    @make = make
    @model = model
    @year = year || Time.now
  end
end

a = Automobile.new
puts a.make
puts a.model
puts a.year #format time, strftime method


  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  