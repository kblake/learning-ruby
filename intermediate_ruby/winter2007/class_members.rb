class Person
  #class variables usually defined in a class scope not method scope
  #@@ tell ruby that it is a class variable
  @@count = 0
  
  #attr_accessor this is getter/setter to instance variables
  attr_accessor :name,:age,:my_count
  def initialize(name,age)
      @name,@age, = name,age
      @my_count = 0
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
    
    #example of instance method, not a class method because no self.
    def do_something_with_my_count
      @my_count += 1
    end
    
    
  def to_s
    "My name is #{@name} and my age is #{@age}.  #{@@count} People"
  end
end

p1 = Person.new("blah",33)
puts p1
p2 = Person.new("tim",13)
puts p2
p3 = Person.new("doug",36)
puts p3

#calling instance methods for each object
p1.do_something_with_my_count
puts "p1 my count is #{p1.my_count}"
puts "p2 my count is #{p2.my_count}"
puts "p3 my count is #{p3.my_count}"
puts p1

#when you call a class method, use the class_name.method_name
puts Person.count

puts Person.find_oldest(p1,p2,p3)














