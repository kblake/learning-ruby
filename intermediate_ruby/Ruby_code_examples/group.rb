class Person
  attr_accessor :first_name, :last_name
  def initialize(first, last)
    @first_name = first
    @last_name = last
  end
  
  def to_s
    "Hello my name is: #{@first_name} #{@last_name}"
  end

end

class Group
  
  def initialize
    @list=[]
    @list << Person.new("John","Doe") << Person.new("Jane","Doe") << Person.new("Lala","lala")
  end
  
  def add_person(person) 
    @list << person
  end
  
  def remove_person(index)
    @list.delete_at(index)
  end
  
  def view_group
    @list.each_index {|i| puts "#{i}: #{@list[i].to_s}"}
  end
  
  def to_s
    @list
  end
end

students = Group.new
students.view_group
students.add_person(Person.new("Mary","Jones"))
puts 
puts "Students after adding..."
students.view_group
puts
puts "enter index of student to delete"
index = gets.chomp.to_i
students.remove_person(index)
students.view_group

#character input observation
puts "enter value"
value = gets.chomp.to_i
puts value
value = 1 + value
puts value

