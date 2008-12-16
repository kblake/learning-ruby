#ruby idioms
breakfast = nil
if !breakfast
	breakfast = "eggs"
end
breakfast = "bacon" unless breakfast
breakfast ||= "eggs"


val = 12
if val==1 || val==12 || val==42 || val == 312
	puts "woo hoo!"
end
nums = [3,3,5,32,3]
nums.each{|num| 
	if num == val
		puts "woo hoo!"
	end
}
if [1,12,42].include?(val)
	puts "woo hoo!"
end

fruits = ["apple","banana"]
fruits << 'apple' unless fruits.include?('apple')
fruits |= ['apple']

user_id = nil
if comments
	if comments.first
		if comments.first.user
			user_id = comments.first.user.id
		end
	end
end

user_id = comments && coments.first && comments.first.user && comments.first.user.id

#ruby dynamics
puts "some value".class  #String
puts 34.class  #Integer
puts 34.class.name    #"Integer"

#open classes to add your coolness
class Integer
	def is_odd?
		self%2==1
	end
end

puts 45.is_odd?
num = 22
puts num.is_odd?

class String
	def weirdness
		self.reverse[0..3]
	end
end

name = "karmen"
puts name.weirdness

class Array
	def friendly
		self.collect{|item| "#{item}\n" }
	end
end

names = ["john","doe","mary","watson"]
puts names.friendly

class Arithmetic
	def sum(num1,num2)
		num1*num2
	end
end
a = Arithmetic.new
puts a.sum(3,4)  #12, wrong!

#open class
class Arithmetic
	alias :buggy_sum :sum
	#fix the bug
	def sum(num1,num2)
		num1 + num2
	end
end

a = Arithmetic.new
puts a.sum(3,4) #does our bug fix work?  of course!  we get 7


#alias methods and properties
class Cat
	attr_accessor :lives_to_live
	alias :lives :lives_to_live
	def lives_output
		"You have #{@lives} remaining"
	end
	alias :print_lives :lives_output
end

c = Cat.new
c.lives = 9
puts c.lives_to_live
puts c.lives_output
puts c.print_lives


#handle non-existent methods
class Person
	attr_accessor :name
	def method_missing(method,*args)
		#respond_to checks to see if the object can call that method
		if(@name.respond_to?(method))
			#send - calls that method on that given object
			@name.send(method)
		else
			puts "Sorry the method '#{method}' does not exist"		
		end
	end
end

p = Person.new
p.name = "Karmen"
p.lala
p.yes_please
puts p.reverse
puts p.downcase









