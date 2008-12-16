#In class assignmetn
# aliasing method names
# object_id
# respond_to?
# send

class MathFun
  def initialize(num1=0,num2=0)
    @num1,@num2 = num1,num2
  end
  def sum
    @num1 + @num2
  end
  def difference
    (@num1 - @num2).abs
  end
  def product
    @num1 * @num2
  end
  alias :addition :sum 
  alias :subtraction :difference 
  alias :multiplication :product 
end

m1 = MathFun.new(34,56)
puts m1.sum
puts m1.addition
puts m1.difference
puts m1.subtraction
puts m1.product
puts m1.multiplication

puts m1.class
p m1.class.to_s
puts m1.object_id

m2 = MathFun.new(34,64)
puts m2.object_id

m3 = MathFun.new(34,346)
puts m3.object_id

m1 = m3
puts m1.object_id
puts m3.object_id

if m1.respond_to?(:sum)
  puts m1.sum
end

if m1.respond_to?(:division)
  puts m1.division
else
  puts "I do not have the ability to do division"
end

method_to_call = "sum"
puts m1.send(method_to_call)
puts m1.send(:product)
puts m1.send(:difference)






















