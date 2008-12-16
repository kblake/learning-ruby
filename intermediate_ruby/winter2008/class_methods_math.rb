class MyMath
  #notice class methods start with self
  def self.add(*numbers)
    numbers.inject(0) {|number, sum| sum += number}
  end
  def self.multiply(*numbers)
    numbers.inject(1) {|number,product| product *= number}
  end
  def self.difference(num1,num2)
    (num1 - num2).abs    
  end
end

#to call class methods use class name.method_name
puts "Sum: #{MyMath.add(3,4,5,2,5)}"
puts "Product: #{MyMath.multiply(3,2,6,4)}"
puts "Difference: #{MyMath.difference(30,38)}"