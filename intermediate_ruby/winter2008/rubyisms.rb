#RUBYISMS

a = b.foo
if a.empty?
  a = b.bar
else
  a.reverse!
end

#can be simplied a little by assigning and 
#checking returned boolean type

if (a = b.foo).empty?
  a = b.bar
else
  a.reverse!
end

-----------------------------------------------

#check the most obvious case first in conditions
case savings_account
when "not much"
  buy_bike
when "some dough"
  buy_yugo
when "a good wad in the wallet"
  buy_toyota
when "just won the lottery"
  buy_dream_car
end

-----------------------------------------------

#not good
breakfast = nil
if breakfeast == nil
  breakfast = "bacon and egss"
end

#not bad
if breakfast.nil?
  breakfast = "bacon and eggs"
end

#pretty cool
if !breakfast
  breakfast = "bacon and eggs"
end

# if !something is the same as unless something
unless breakfeast
  breakfast = "bacon and eggs"
end

#can it get better?  awww yea!
breakfast = "bacon and eggs" unless breakfast

#even better???!!!
breakfast ||= "bacon and eggs"

-----------------------------------------------

#too much work, ugh!
val = 12
if val == 1 || val == 12 || val == 42
  puts "woo hoo!"
end

#sweetness
if [1,12,42].include?(val)
  puts "woo hoo!"
end

-----------------------------------------------

#only include value if it is not present in array

fruits = ['apple','banana']

#ouch
fruits << 'apple' unless fruits.include?('apple')

#better
fruits |= ['apple']

-----------------------------------------------

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

-----------------------------------------------

#return values from methods
def say_goodnight(name)
  result = "Good night, " + name.capitalize
  return result
end

#rubyized
#remember last value of method gets returned by default
#use interpolated values instead of concatenating
def say_goodnight(name)
  "Good night, #{name,capitalize}"
end

-----------------------------------------------

def old_enough?(age)
  if age > 15
    true
  else
    false
  end
end

#would be better written as
def old_enough?(age)
  age > 15
end

-----------------------------------------------

#Classes getters/setters

class Person
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
  def name=(name)
    @name = name
  end
end

#use attr_accessor to do the same thing, sweetness!
class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

-----------------------------------------------

a = [ 'ant', 'bee', 'cat', 'dog', 'elk' ]

#sometimes its easier to create this array alternatively like this
a = %w{ ant bee cat dog elk }

-----------------------------------------------

for i in 0..9
  puts i, " "
end

#this is so much cooler!
10.times {|i| puts i}

#don't forget other iterators like upto, downto, and step

-----------------------------------------------

people = array of people...

#PAINFULL!!
i = 0
while i < people.size
  puts people[i].name
  i += 1
end

#LESS PAINFUL!
for i in 0..people.size
  puts people[i].name
end

#rubyize it by using the each iterator
people.each { |person| puts person.name }

-----------------------------------------------
#call makes 26 calls for each letter everytime 
#capital_letters method is called
def capital_letters
  ('A'..'Z').to_a
end

#instead, creating a class variable caches the to_a in memory
#the method call uses cached value
@@capital_letters=('A'..'Z').to_a
def capital_letters
  @@capital_letters
end

-----------------------------------------------

#don't reinvent the wheel, check the built in api
def stringify_array(an_array)
  a_string = ""
  for element in an_array
    if a_string.size > 0
      a_string += ", "
    end
    a_string += element.to_s
  end
  return a_string
end

some_array = %w(hello there buddy)
puts stringify_array(some_array)

#join gives us exactly what we need
puts some_array.join(", ")


