class Person
  attr_accessor :firstname,:lastname,:age
  def initialize(firstname="",lastname="",age=-1)
    @firstname,@lastname,@age = firstname,lastname,age
  end
  
  #special
  #gives an object a simple way to output self
  #nice and meaningful
  #return string,  not output
  def to_s
    "#{firstname} #{lastname} #{age}"
  end
end

class People
  def initialize
    @people = load_people
  end
  
  def debug_view
    @people.to_yaml
  end
  
  def print
    @people.each{|person| puts person}
  end
  alias :output :print
  alias :show_all :print
  
  def print_ages
    @people.each {|person| puts person.age}
  end
  
  def firstnames
    @people.inject(""){|output,person| output += person.firstname + "\n"}
  end
  
  def average_age
    sum = 0
    @people.each {|person| sum += person.age}
    #accumulator iterator, inject
    #sum = names.inject(0){|sum,person| sum+=person.age}
    average_age = sum/@people.length
  end
  
  def empty?
    @people.empty?
  end
  
  def name_present?(name)
    (@people.find{|person| (person.firstname + person.lastname).include?(name)}) ? true : false
  end
  alias :name_exists? :name_present?
  
  def add(person)
    @people << person
  end

  private
  def load_people
    people = []
    file = "names.txt"
      if File.exists?(file)
        IO.foreach(file) do |line|
          person_array = line.chomp.split(",")
          person = Person.new(person_array[0],person_array[1],person_array[2].to_i)
          people << person
        end
      end
    return people
  end
    
end

#~ p1 = Person.new("blah","blah",345)
#~ p2 = Person.new("blah","blah",34)

#~ #now an object can represent itself via to_s
#~ puts p1.to_s #explicit call to to_s
#~ puts p2 #implied call to to_s










