class String
  def encrypt
    tr "a-z","b-za"
  end
end
#changes apply to all Strings

puts "cat"
puts "cat".encrypt
pet = "dog"
puts pet
puts pet.encrypt

#ust add encrypt on an object not on all instances of String
name = "karmen"
def name.encrypt2
  tr "a-z","b-za"
end
puts name
puts name.encrypt2
str = "blah"
# puts str.encrypt2 #does not work


class Fixnum
  def hours
    self * 3600
  end
  def from_now
    Time.now + self
  end
end
puts 3.hours.from_now


class Demo
  def one(value)
    @value = value
    two #calls self.two, remember self got changed to d
  end
  def two
    puts @value
  end
end
d = Demo.new
d.one("Hello") #changing current object from self to d, then go run method one


#what is self?
puts self #main, huh?
puts self.class #Object


#classes are objects too
class Karmen
  puts self  #Karmen, object that represents by class Karmen
  puts self.class #Class
  def hello
    puts "hi"
  end
  
  #defined on object self, self is the class, thus a class method
  def self.hello
    puts "hola"
  end
  def Karmen.hola  #remember Karmen is the same as self
    puts "hello"
  end
  
  def self.has_many(tools)
    puts tools #do something else cool with tools
  end

end

class Fred < Karmen
  has_many :tools
  hola
end

#constant in which ruby stores the class
Karmen.new.hello
cls = Karmen
cls.new.hello
Karmen.hello
cls.hello
Karmen.hola
Fred.hola


class Parent
  def self.set_table_name(new_name)
    @table_name = new_name    #sets instance variable for Book class, not instances of Book
  end
  
  #hook that get called everytime you get subclassed
  def self.inherited(subclass)
    name = subclass.name.downcase + "s"
    subclass.set_table_name(name)
  end
end

class Child < Parent
  set_table_name "volumes"
end


#another way to do this...Example SslRequirement
module SslRequirement
  def self.included(controller) #hook which is called whenever anyone includes you :)
    # controller.extend(ClassMethods)
    #    controller.before_filter(:ensure_proper_protocol)
  end
  module ClassMethods #module could be any name but ClassMethods is convention
    def ssl_required(*actions)
      #do cool stuff
    end
    def ssl_allowed(*actions)
      #do cool stuff
    end
  end
end
class SomeControllerParent
end
class ApplicationController < SomeControllerParent
  include SslRequirement #we want to include all class methods from a module
end


#module basics
module Lala #frustrated class
  def hi
    puts "hi"
  end
end

class Other
  include Lala #creates instance methods
end

Other.new.hi

a = "cat"
a.extend(Lala) #adds methods to object itself
a.hi

class Blah
  extend Lala #add methods in Karmen to self/Blah as class methods
end

Blah.hi

#another way to create class method
class Me
  class << self
    def blah
      puts "blah"
    end
  end
end

Me.blah



#eval, executes code in string format
#binding remembers the context it came from and makes it available to you in different context
def evaluator(str,binding)
  a_value = 123
  eval(str,binding) #outputs 321
end
str = "puts a_value"
a_value = 321
evaluator(str,binding)



#instance_eval
#sets the value of self to the receiver
class Thing
  def a_value
    123
  end
end

Thing.new.instance_eval("puts self.a_value")



#closures
def proc_with_enclosing_scope
  name = "Ruby"
  lambda {puts name}
end

the_proc = proc_with_enclosing_scope
the_proc.call

name = "Java"
the_proc.call  #keeps Ruby enclosed

###########################################

class ApplicationController < ActionController::Base
  def self.search_action_for(table_name)
    model = table_name.to_s.classify.constantize
    #add method on the fly
    define_method("search_form_#{table_name}") do
      @title = "some cool title"
      @results = model.find(:all, :conditions => ["name like ?", "%#{params[:phrase]}%"] )
      render :template=>"somewhere"
    end
  end
end

class UsersController < ApplicationController
  search_action_for :users
end




















