##########################################
#Ruby idioms
########################################
#old school
breakfast = nil
if !breakfast
  breakfast = "bacon"
end
#cool but is there a better way?
breakfast = "bacon" unless breakfast
#aw yeah!! or-equals operator only do it if it is not nil
breakfast ||= "bacon"

#old school
val = 12
if val == 1 || val == 12 || val == 42
  puts "woo hoo!"
end
#sweetness
if [1,12,42].include?(val)
  puts "woo hoo!"
end

fruits = ['apple','banana']
#ugly
fruits << 'apple' unless fruits.include?('apple')
#aww much better
fruits |= ['apple']
p fruits


#a lot of work
user_id = nil
if comments
  if comments.first
    if comments.first.user
      user_id = comments.first.user.id
    end
  end
end

#are they really paying me to do this
#evaluate logic from left to right, returning last value executed
user_id = comments && comments.first && comments.first.user && comments.first.user.id


#################################################################################
#DYNAMIC PROGRAMMING
################################################################################
#finding class information
p "some string".class
p "some string".class.name
p 34.class

#open classes
class Integer
  def is_odd?
    self%2==1
  end
end

num = 10
puts num.is_odd?
num = 11
puts num.is_odd?

class String
  def weirdness
    self.reverse[0..3]
  end
end

name = "karmen"
puts name.weirdness

class Array
  def friendly_print
    self.collect{|item| "#{item}\n"}
  end
end

nums = [3,4,2,5,3,3]
puts nums.friendly_print
names = ["john","doe","mary","jane"]
puts names.friendly_print


#you can alias methods and properties
class Cat
  attr_accessor :lives
  alias :lives_to_live :lives
  def lives_output
    "You have #{@lives} remaining"
  end
  alias :print_lives :lives_output
end
c = Cat.new
c.lives = 9
puts c.lives
puts c.lives_to_live
puts c.lives_output
puts c.print_lives

#Dymanically Instantiate a class by name
classname = "Array"
klass = Object.const_get(classname)
nums = klass.new([3,4,2,5,7])
puts nums.friendly_print
names = klass.new(["john","jane","mary"])
puts names.friendly_print


#sending method calls to objects
class Dog
  def say_woof(times)
    "woof"*times
  end
end

d = Dog.new
puts d.send(:say_woof,5)

#handling nonexistent methods
class Person
  attr_accessor :name
  def method_missing(method,*args)
    puts method
    if(@name.respond_to?(method))
      @name.send(method)
    else
       "sorry that method does not exist"
    end
  end
end

p = Person.new
p.name = "karmen"
puts p.do_something
puts p.lala
puts p.reverse

#Fixing someelse's bug
class Arithmetic
  def sum(num1,num2)
    num1 * num2
  end
  def difference(num1,num2)
    (num1 - num2).abs
  end
end

m = Arithmetic.new
puts m.sum(3,3)  #product not sum!! ugh!

#fix it by reopening class, aliasing bad method, overwrite method
class Arithmetic
  alias :buggy_sum :sum
  def sum(num1,num2)
    num1 + num2
  end
end

m = Arithmetic.new
puts m.buggy_sum(3,3)
puts m.sum(3,3)
puts m.difference(35,3)
