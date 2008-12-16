# A block is a chunk of Ruby code associated with a method call.
# 
#
# object.method_call block
# people.each {|person| person.something}
#
# object: people
# method_call: each
# block: {|person| person.something}
#
# A method that has a block associated with it may call the block by using the yield statement.

def hello_world
  puts yield
end
hello_world{"greetings earthlings!"}

def sum(num1,num2)
  yield(num1,num2)
end
puts sum(43,25){|x,y| x + y}

answer = sum(3,3) do |x,y|
  x + y
end
puts answer

# Blocks are anonymous.  They are not passed to a method traditionally but can be.

# You may pass in a block explicitly to a method as the last argument in a method argument list.  It also must
# have an & prepended onto the argument name.
# then to call the block, call the block using the call method
# so here are the same methods with explicit block arguments
# the method call with the block still gets called the same

def hello_world(&block)
  puts block.call
end
hello_world{"greetings earthlings!"}

def sum(num1,num2,&block)
  block.call(num1,num2)
end
puts sum(43,25){|x,y| x + y}

# The block must be the last parameter.  For example, what if you want a set of numbers passed into sum
def sum(*numbers,&block)
  numbers.inject(0){|sum,num| block.call(sum,num)}
end
puts sum(3,4,2){|x,y| x + y}
puts sum(83,4,63,23,53){|x,y| x + y}
puts sum(93,42,52,32,55,12,53){|x,y| x + y}

################################################################
# Proc objects
# A "callable object"
# If you want to create a literal block and save it to a variable to be reused then you must create it using a Proc.
# Quite simply, create a Proc object to create a literal block.


printable_message = Proc.new{ puts "hello"}
printable_message.call

#arguments for proc objects
print_something = Proc.new{ |some_value|  puts "This is some value: #{some_value}"}
print_something.call("blah blah")
print_something = Proc.new{ |some_value,other_value|  puts "This is some value: #{some_value} and other value: #{other_value}"}
print_something.call("syntactic","sugar")
print_anything = Proc.new{ |*values| p values }
print_anything.call("blah",33,"lala")
print_anything.call(838,"lkdkd","kdkdkd","kke",true)

numbers = [1,2,3,4,5,6]
numbers.each{|number| print number, " "}
puts
numbers.reverse_each{|number| print number," "}
puts

# Notice the block for both each and reverse_each are identical (not DRY).
# So let's DRY it up using a Proc
# the & must be prepended onto the proc variable name to make it act like a block

output_number = Proc.new {|number| print number, " "}
numbers.each(&output_number)
puts
numbers.reverse_each(&output_number)
puts

# you can also create methods that return procs that may then be called
def say_hello
  Proc.new{ |times,message| message*times }
end

greetings = say_hello
puts greetings.call(2,"hello") #.call passes value into block
puts greetings.call(3,"ho")

def times_num(number)
  Proc.new{ |value| value * number  }
end

times_ten = times_num(10) #passes value into method
puts times_ten.call(5) #call arguments go into block
puts times_ten.call(2)
times_100 = times_num(100)
puts times_100.call(8)
puts times_100.call(3)

#################################################################
#Symbol to Proc
#allows shorthand notation when using blocks
class Symbol
  def to_proc
    Proc.new { |obj, *args| obj.send(self, *args) }
  end
end

numbers_string = numbers.map{|number| number.to_s}  #without symbol to proc
p numbers_string
numbers_string = numbers.map(&:to_s) #using symbol to proc
p numbers_string
