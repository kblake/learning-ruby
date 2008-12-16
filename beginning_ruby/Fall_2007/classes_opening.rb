#opening a class: ruby gives us the ability to add methods to existing core library classes/custom classes
#why?
#add functionality that is not there
#fix functionality that is broken

#open a class
#define a class with the same name
class Integer
  def odd?
    self%2 == 1
  end
  def even?
    !self.odd?
  end
end
puts "Odd?"
puts 1.odd?
puts 2.odd?
puts 3.odd?
puts 4.odd?
puts "Even?"
puts 1.even?
puts 2.even?
puts 3.even?
puts 4.even?
puts "Bignum even?"
puts 888888888888888888888888888888888888888.even?

numbers = [1,2,3,4,5,6,7,8,9]

numbers.each {|num| puts "#{num} is odd? #{num.odd?}"}


#open the array class - cool!
#reuse odd? method I added to Integer
#method calls are valid on class type that you are in
class Array
  def odds
    find_all {|num| num.odd?}
  end
  def odds!
    replace(odds)
  end
end

puts
p numbers.odds
p numbers
p numbers.odds!
p numbers
puts
#original class
class MathFun
  def initialize(num1=0,num2=0)
    @num1,@num2 = num1,num2
  end
  def sum
    @num1 + @num1
  end
end

m1 = MathFun.new(3,5)
puts m1.sum

#open class to fix bug
class MathFun
  alias :sum_broken :sum #alias bad method from original class
  
  #create fixed method
  def sum
    @num1 + @num2
  end
end

m2 = MathFun.new(3,5)
puts m2.sum
puts m2.sum_broken

#add fudd functionality
class String
  def acts_as_fudd
    self.gsub!(/[rl]/,"w") << ", uh-hah-hah-hah"
  end
end

puts "You rascally rabbit!".acts_as_fudd
puts "Hello world".acts_as_fudd
puts "I'm feeling lucky".acts_as_fudd











